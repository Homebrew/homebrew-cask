cask 'kitematic' do
  version '0.10.1'
  sha256 'd1ec013997dfca1c3d9435d25342c1f51e657fd6740669d214708cb81bc841ee'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/kitematic/kitematic/releases.atom',
          checkpoint: '7e9f72dd041924bf81f3c646628b7a81780129e56bf581d9139ac83682c8b32e'
  name 'Kitematic'
  homepage 'https://kitematic.com/'
  license :apache

  app 'Kitematic (Beta).app'

  zap delete: [
                '~/Library/Application Support/Kitematic',
                '~/Kitematic',
              ]
end
