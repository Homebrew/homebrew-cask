cask :v1 => 'kitematic' do
  version '0.7.3'
  sha256 'db0a3f8e2d32c0d94a1a44092f5e6af4761a14df7235d906c5bbcacc7b822cb0'

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
