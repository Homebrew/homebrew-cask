cask 'geotag' do
  if MacOS.version <= :mountain_lion
    version '2.2'
    sha256 'c5553af3b37903b7e4f402d8c9fbeced63492295c6bdd25987dd70ab367c32e9'
  else
    version '3.5.8'
    sha256 '02dcf8c87b69ab517f0c7919104da97ca09028c41f1b8c408026331b29a36685'
  end

  url "https://www.snafu.org/GeoTag/GeoTag-#{version}.dmg"
  appcast 'https://www.snafu.org/GeoTag/',
          checkpoint: '30f80a387e9aad3cf530878242d2d8bc4489ddb1cdbd1b0b3f2127cc4058d837'
  name 'GeoTag'
  homepage 'https://www.snafu.org/GeoTag/'

  depends_on formula: 'exiftool'

  app 'GeoTag.app'

  zap delete: [
                '~/Library/Caches/org.snafu.GeoTag',
                '~/Library/Saved Application State/org.snafu.GeoTag.savedState',
              ],
      trash:  '~/Library/Preferences/org.snafu.GeoTag.plist'
end
