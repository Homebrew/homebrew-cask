cask 'lingon-x' do
  version '5.0.1'
  sha256 '0d6dad8bffcb393702656bf27f1514de061143667e4068972c5f2d8bc0e3d768'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'afc0efe73dd7a0093a4a76cc315697fb064f80755f0897a553e785f407cef398'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap delete: [
                '~/Library/Application Scripts/com.peterborgapps.LingonX5',
                '~/Library/Containers/com.peterborgapps.LingonX5',
              ]
end
