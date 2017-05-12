cask 'lingon-x' do
  version '5.0.2'
  sha256 'd3ab9a7d33c2aff7153d4b4bd001c38e16216a7722127a8baed2199ad77fc62b'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '8532e54ccbfc85cecc5055c76089b4e71a175dc7734b574828e7283a7cd51545'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap delete: [
                '~/Library/Application Scripts/com.peterborgapps.LingonX5',
                '~/Library/Containers/com.peterborgapps.LingonX5',
              ]
end
