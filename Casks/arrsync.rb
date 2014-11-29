cask :v1 => 'arrsync' do
  version '0.4.1'
  sha256 '8a254771065f90a9f9f882589eccaf7bc51ad5d0ac86faf15847381bcdbe64f0'

  url "http://downloads.sourceforge.net/sourceforge/arrsync/arrsync-#{version}.dmg"
  homepage 'http://arrsync.sourceforge.net'
  license :oss

  app 'arRsync.app'
end
