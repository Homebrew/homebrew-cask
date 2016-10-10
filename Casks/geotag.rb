cask 'geotag' do
  if MacOS.version <= :mountain_lion
    version '2.2'
    sha256 'c5553af3b37903b7e4f402d8c9fbeced63492295c6bdd25987dd70ab367c32e9'
  else
    version '3.5.8'
    sha256 '08ec271c56e5fda2fe3eee73289f0994084ecc3ce0ebffbc8dac3444f00ad41c'
  end

  url "http://www.snafu.org/GeoTag/GeoTag-#{version}.dmg"
  appcast 'http://www.snafu.org/GeoTag/',
          checkpoint: '6bccfd48a9ee7ae4a438c7c48684052cd93e783c2252e9c22b29aaa156bf483c'
  name 'GeoTag'
  homepage 'http://www.snafu.org/GeoTag/'

  depends_on formula: 'exiftool'

  app 'GeoTag.app'

  zap delete: [
                '~/Library/Caches/org.snafu.GeoTag',
                '~/Library/Saved Application State/org.snafu.GeoTag.savedState',
              ],
      trash:  '~/Library/Preferences/org.snafu.GeoTag.plist'
end
