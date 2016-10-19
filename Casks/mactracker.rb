cask 'mactracker' do
  version '7.6'
  sha256 'a562f7484fe833ddf8a505c44c0e75788bc23676724762625c0d4b9c35b0c4e5'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml',
          checkpoint: '285ef4ac11da8565ec44ff4522a839a6d5f104e19011c96103c305bddc371186'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  app 'Mactracker.app'
end
