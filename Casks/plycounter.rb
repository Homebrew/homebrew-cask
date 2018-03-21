cask 'plycounter' do
  version '2.2'
  sha256 '06e7d37f4df8cbc4871083c28d221d4b85f10ae01a95f6625fe1b777c6783fbb'

  url 'https://plycounter.com/download/PlyCounter.dmg'
  appcast 'https://plycounter.com/guide/downloads/',
          checkpoint: '392fc3e683c9b209d77604edafccd06d8488774fb6e834cff2a306e7a041bb42'
  name 'PlyCounter'
  homepage 'https://www.plycounter.com/'

  depends_on macos: '>= :el_capitan'

  app 'PlyCounter.app'
end
