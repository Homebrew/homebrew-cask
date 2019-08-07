cask 'mactracker' do
  version '7.8'
  sha256 '9ed88db9ee54b6803e276eb5e8d0bb1d6ca75a5684e116809919ae3abc815a06'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
