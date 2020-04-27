cask 'mactracker' do
  version '7.9'
  sha256 'b65e18344cca843a74b48804808cded0eee9a7ba2116386bcd34cf0469ede81e'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
