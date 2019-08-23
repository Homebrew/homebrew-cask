cask 'commander-one' do
  version '2.2'
  sha256 'd0d5fdf26336359cb23e2bb20097f5f1226d0c4868212a1692faf26e433d3ba6'

  url 'https://cdn.eltima.com/download/commander.dmg'
  appcast 'https://cdn.eltima.com/download/commander-update/settings.xml'
  name 'Commander One'
  homepage 'https://mac.eltima.com/file-manager.html'

  depends_on macos: '>= :yosemite'

  app 'Commander One.app'
end
