cask 'mactracker' do
  version '7.9.1'
  sha256 'fb811b503fd16580299cf56195b20a50c46fce07e332b1a73a759df6f4c6d116'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
