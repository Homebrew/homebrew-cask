cask 'commander-one' do
  version '2.1'
  sha256 'dd8d7d0b02e6a8db4a98d360223c800416ed80b1b9becfd64dfcaf2ee159ff0d'

  url 'https://cdn.eltima.com/download/commander.dmg'
  appcast 'https://cdn.eltima.com/download/commander-update/settings.xml'
  name 'Commander One'
  homepage 'https://mac.eltima.com/file-manager.html'

  depends_on macos: '>= :yosemite'

  app 'Commander One.app'
end
