cask :v1 => 'kitematic' do
  version '0.5.23'
  sha256 'e644f2f45fd9074f4446a54660a9f7d4a13f07d3349bde0ba3cbd6b587132b71'

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
