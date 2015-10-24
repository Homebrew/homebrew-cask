cask :v1 => 'mactracker' do
  version '7.4.6'
  sha256 'ae9448481736cc04a14aa031033064163569add6519ec58ee66876e7bffc83a1'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          :sha256 => '48b66546001a2cf246a4240bd9ff7756978967ee9030ac1b56d2c58d595cca7b'
  name 'Mactracker'
  homepage 'http://mactracker.ca/'
  license :gratis

  app 'Mactracker.app'
end
