cask 'mactracker' do
  version '7.5.5'
  sha256 '9febbad5da43f601983ee93a3900ed63de95632b1dde1a4516a334060d9da763'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          checkpoint: '37639fbdfd36fe9a4341dc08c919db3ac1cfaee4d54461669fd45acb25b8e99d'
  name 'Mactracker'
  homepage 'http://mactracker.ca/'
  license :gratis

  app 'Mactracker.app'
end
