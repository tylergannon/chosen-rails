require 'chosen-rails/version'

module Chosen
  module Rails
  end
end

case ::Rails.version.to_s
when /^3\.[12]/
  require 'chosen-rails/engine3'
when /^3\.[0]/
  require 'chosen-rails/railtie'
else
  require 'chosen-rails/engine'
end

require 'compass-rails'
