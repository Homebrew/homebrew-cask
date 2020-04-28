cask 'mactracker' do
  version '7.9'
  sha256 'b73051559db9d5b3a7d1d0e44a70f3b7b36784bfc7c732863017325c10bffca1'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
