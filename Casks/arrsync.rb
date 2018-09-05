cask 'arrsync' do
  version '0.4.1'
  sha256 '8a254771065f90a9f9f882589eccaf7bc51ad5d0ac86faf15847381bcdbe64f0'

  url "https://downloads.sourceforge.net/arrsync/arrsync-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/arrsync/rss'
  name 'arRsync'
  homepage 'http://arrsync.sourceforge.net/'

  app 'arRsync.app'
end
