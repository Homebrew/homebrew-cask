cask 'mactracker' do
  version '7.9.2'
  sha256 'f9fc3a163d33ae08c34a3efcda61cfeaee7f764123fb559a362a476f04a520d1'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
