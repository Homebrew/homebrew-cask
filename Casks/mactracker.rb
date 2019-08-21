cask 'mactracker' do
  version '7.8.1'
  sha256 'c5ed0018bd1b564804bf22aea65a13bf9e123095841a34b3e2ff3916a238c288'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
