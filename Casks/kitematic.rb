cask :v1 => 'kitematic' do
  version '0.8.5'
  sha256 '7b84497919c8b2563b136bb73f248c09922e772f10d513e20e9edf4d697580ad'

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
