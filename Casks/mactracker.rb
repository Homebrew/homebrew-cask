cask 'mactracker' do
  version '7.7.6'
  sha256 'e5642d9df4e86855a27087e715770f7b6ae901e744e0033dc2bc046047370c1b'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
