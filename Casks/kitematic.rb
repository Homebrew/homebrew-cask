cask 'kitematic' do
  version '0.10.5'
  sha256 '1142b3b3934a36cff3ecc322f0773c1fc390219773a21a71fc35b3255bc4a15c'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/kitematic/kitematic/releases.atom',
          checkpoint: '942603752d9f491285159cea94f95e5ba2ab3d4581951a374d0e15bd49cc2cf4'
  name 'Kitematic'
  homepage 'https://kitematic.com/'
  license :apache

  app 'Kitematic (Beta).app'

  zap delete: [
                '~/Library/Application Support/Kitematic',
                '~/Kitematic',
              ]
end
