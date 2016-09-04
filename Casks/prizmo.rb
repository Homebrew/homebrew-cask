cask 'prizmo' do
  version '3.1.12'
  sha256 '8520490ce6839caa6c346d655a44b72a962f8b508204827a75497fdde2eeaf72'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast 'https://www.creaceed.com/appcasts/prizmo3.xml',
          checkpoint: '3d86932819813f4465275760c072fc3c23981450df89bbad5c78a1b313177ddf'
  name 'Prizmo'
  homepage 'https://www.creaceed.com/prizmo'
  license :freemium

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
