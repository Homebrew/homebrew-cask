cask 'mactracker' do
  version '7.7.6'
  sha256 '6c9c46290ab312ebdc049e930638957643738c68952652594c9067fa519f0b10'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
