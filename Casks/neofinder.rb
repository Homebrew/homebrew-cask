cask 'neofinder' do
  version '7.1.1'
  sha256 'ceee1d367fb0c6927fba86c66d33d5e20d93a93748a4cba4e3ce4799d7911387'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml',
          checkpoint: '673d705249d43830686a44fa7d4adff37c85451c3d13c69216da4cb6e8b04026'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end
