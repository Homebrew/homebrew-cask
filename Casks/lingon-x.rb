cask 'lingon-x' do
  version '5.1.1'
  sha256 'ae679ffe9dcb7aefa08bf6988ae12ec45dce1cf7d2f70c45607fd527128568f4'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '8a64c4c2c4eba5051e465fde832b701d50b75adea829ecf7e29ae9d034d4ffc7'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap delete: [
                '~/Library/Application Scripts/com.peterborgapps.LingonX5',
                '~/Library/Containers/com.peterborgapps.LingonX5',
              ]
end
