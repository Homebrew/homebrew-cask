cask 'mactracker' do
  version '7.8.1'
  sha256 '8a649cb746c32de2aae5daf04f9fda58e6a146c73ac951baa0fa891871562f22'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  auto_updates true

  app 'Mactracker.app'
end
