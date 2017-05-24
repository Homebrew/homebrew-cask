cask 'lingon-x' do
  version '5.0.4'
  sha256 'f73eb4921eb4d777bb15ec43e731b63e7be6f61ca4a6d1e03b4ac7547b3ed22c'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '0b5269a2e8bd3ec3fba8ddee593e1a408af9b08bd2594822f0734d90fb855be3'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap delete: [
                '~/Library/Application Scripts/com.peterborgapps.LingonX5',
                '~/Library/Containers/com.peterborgapps.LingonX5',
              ]
end
