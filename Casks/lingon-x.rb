cask 'lingon-x' do
  version '5.0.3'
  sha256 'a7ca279baa962f2aa56484c08956d4cda94f5207a1731be1c6b8753e97b70d51'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '45238c0ee4b02eb599909f93ed61b51855ebb49576dc77ad71b2debcad128610'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap delete: [
                '~/Library/Application Scripts/com.peterborgapps.LingonX5',
                '~/Library/Containers/com.peterborgapps.LingonX5',
              ]
end
