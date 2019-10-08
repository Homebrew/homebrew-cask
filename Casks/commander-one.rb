cask 'commander-one' do
  version '2.3'
  sha256 '1e48e509a62f24fa058158d86b0e563f9ec5c3b09dda1c04eac8030cf11f619f'

  url 'https://cdn.eltima.com/download/commander.dmg'
  appcast 'https://cdn.eltima.com/download/commander-update/settings.xml'
  name 'Commander One'
  homepage 'https://mac.eltima.com/file-manager.html'

  depends_on macos: '>= :yosemite'

  app 'Commander One.app'
end
