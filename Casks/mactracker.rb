cask :v1 => 'mactracker' do
  version '7.4'
  sha256 '186a2c1e46188023e11619f9af24f4a2d41b5805989dee5790d78eedfe8fda27'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          :sha256 => '4792d02bbece6924e8ddb068327d0814b733475b1f95dddf33bb3cc9ecf0810c'
  homepage 'http://mactracker.ca/'
  license :unknown

  app 'Mactracker.app'
end
