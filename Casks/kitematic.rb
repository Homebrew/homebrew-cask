cask :v1 => 'kitematic' do
  version '0.8.2'
  sha256 'ef99d9640c1966f6a70390efedeaf06b1ccb7b953afaeea16e9e884e868ddca5'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/kitematic/kitematic/releases.atom'
  name 'Kitematic'
  homepage 'https://kitematic.com/'
  license :apache

  app 'Kitematic (Beta).app'

  zap :delete => [
    '~/Library/Application Support/Kitematic',
    '~/Kitematic'
  ]
end
