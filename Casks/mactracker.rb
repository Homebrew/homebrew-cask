cask :v1 => 'mactracker' do
  version '7.5'
  sha256 'e5a22349e14b5ec50a38810d6a2db520ff29cc0dbf665769a6c2852a022d134f'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          :sha256 => '48b66546001a2cf246a4240bd9ff7756978967ee9030ac1b56d2c58d595cca7b'
  name 'Mactracker'
  homepage 'http://mactracker.ca/'
  license :gratis

  app 'Mactracker.app'
end
