cask 'mactracker' do
  version '7.8.2'
  sha256 '6da436e8e9ee2fb90be46536029e586b7aa7df763c02c0427e441446c09e17cd'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
