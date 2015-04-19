cask :v1 => 'kitematic' do
  version '0.5.15'
  sha256 '4d2457e1c6ec4c695ee466636f1639cd92ec5fc13792e41036fdd2e2020564db'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}.zip"
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
