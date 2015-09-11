cask :v1 => 'mactracker' do
  version '7.4.5'
  sha256 '1b49c5bb310eda23c746b650ba9a99423e9786be60e13b4e45d54c19ffb38bc3'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          :sha256 => '4792d02bbece6924e8ddb068327d0814b733475b1f95dddf33bb3cc9ecf0810c'
  name 'Mactracker'
  homepage 'http://mactracker.ca/'
  license :gratis

  app 'Mactracker.app'
end
