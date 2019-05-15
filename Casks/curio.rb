cask 'curio' do
  version '13002.3'
  sha256 '275e25cd3acf85183eeae1773e55794fcb2b4a803c80d2859bfb508d6ea808b8'

  url "https://www.zengobi.com/downloads/Curio#{version.no_dots}.zip"
  appcast 'https://www.zengobi.com/appcasts/Curio13HLwLK2C84LaKptcz.xml'
  name 'Curio'
  homepage 'https://zengobi.com/curio/'

  depends_on macos: '>= :high_sierra'

  app 'Curio.app'
end
