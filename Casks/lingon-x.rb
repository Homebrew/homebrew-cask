cask 'lingon-x' do
  version '5.1'
  sha256 '043b375547cfb1dfe32f060f7c97550bca7564f62630b01ca1b64f0ced1c03c8'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '845dff97c061da8b79ceeb289b59c6160759cd76d5dc9c0a55742961c09f8393'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap delete: [
                '~/Library/Application Scripts/com.peterborgapps.LingonX5',
                '~/Library/Containers/com.peterborgapps.LingonX5',
              ]
end
