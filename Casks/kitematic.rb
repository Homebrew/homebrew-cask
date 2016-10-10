cask 'kitematic' do
  version '0.12.0'
  sha256 '0d6770197ed1db1c9a653c78bc51bb0d1483882233cf2d2bf688609b1a5251ef'

  # github.com/docker/kitematic was verified as official when first introduced to the cask
  url "https://github.com/docker/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/docker/kitematic/releases.atom',
          checkpoint: '834ddbe5a9ae702ba925592d6fccf744edd2e4e3a2d3c7b1c65b48adab97a61d'
  name 'Kitematic'
  homepage 'https://kitematic.com/'

  app 'Kitematic (Beta).app'

  zap delete: [
                '~/Library/Application Support/Kitematic',
                '~/Kitematic',
              ]
end
