cask 'kitematic' do
  version '0.10.5'
  sha256 '1142b3b3934a36cff3ecc322f0773c1fc390219773a21a71fc35b3255bc4a15c'

  # github.com/docker/kitematic was verified as official when first introduced to the cask
  url "https://github.com/docker/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/docker/kitematic/releases.atom',
          checkpoint: '5aca7decc78f2f3182693847a31919d53099b53aa17012c77517180838f8a467'
  name 'Kitematic'
  homepage 'https://kitematic.com/'
  license :apache

  app 'Kitematic (Beta).app'

  zap delete: [
                '~/Library/Application Support/Kitematic',
                '~/Kitematic',
              ]
end
