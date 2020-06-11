cask 'mactracker' do
  version '7.9.3'
  sha256 '893c0417bd13811f534cf78d257193eab2152ef7e8ce39273d4b99eaf00de432'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
