cask 'mactracker' do
  version '7.7.4'
  sha256 '5a07024328322b1736070cc98136318d1adfa1ac544fb7025995b4131a3d6940'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  app 'Mactracker.app'
end
