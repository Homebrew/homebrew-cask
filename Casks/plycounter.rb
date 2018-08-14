cask 'plycounter' do
  version '2.2'
  sha256 '06e7d37f4df8cbc4871083c28d221d4b85f10ae01a95f6625fe1b777c6783fbb'

  url 'https://plycounter.com/download/PlyCounter.dmg'
  appcast 'https://plycounter.com/guide/downloads/'
  name 'PlyCounter'
  homepage 'https://www.plycounter.com/'

  depends_on macos: '>= :el_capitan'

  app 'PlyCounter.app'
end
