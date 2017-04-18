cask 'lingon-x' do
  version '5.0'
  sha256 'b0aa33d90994d3724c60357ad50248f4db25ac8058c5596db390758ec5d3fd17'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'a2c4b4fce8357186a6ea23b30db9bd75550a00845571808cfb87ed1421857288'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :sierra'

  app 'Lingon X.app'

  zap delete: [
                '~/Library/Application Scripts/com.peterborgapps.LingonX5',
                '~/Library/Containers/com.peterborgapps.LingonX5',
              ]
end
