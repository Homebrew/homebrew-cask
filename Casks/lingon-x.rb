cask 'lingon-x' do
  version '5.2'
  sha256 'c101e9ce2f0bb1378ccd2b9d37a378bea35db907ee14634cf75be4f8db23637c'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '37aa20cfa8a3d1eb4803773e0d841754df8a65710850bd4c2ccbc4ebaebfa7d3'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap delete: [
                '~/Library/Application Scripts/com.peterborgapps.LingonX5',
                '~/Library/Containers/com.peterborgapps.LingonX5',
              ]
end
