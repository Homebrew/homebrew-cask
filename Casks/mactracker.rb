cask 'mactracker' do
  version '7.7.6'
  sha256 'a19e1c30d527a101c0e744b6a8193830c0d39d7bddf7c0de1f04b7e36c78303a'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
