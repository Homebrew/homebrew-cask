cask 'kitematic' do
  version '0.9.6'
  sha256 '70572ca6a203acd49f357d9d6c946528a133333a95326b8342d00b5125c2b352'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/kitematic/kitematic/releases.atom',
          checkpoint: '0c57902f605889c8dc67f30fd04645a7c8f1bd5faf2241267b346199fd20570b'
  name 'Kitematic'
  homepage 'https://kitematic.com/'
  license :apache

  app 'Kitematic (Beta).app'

  zap delete: [
                '~/Library/Application Support/Kitematic',
                '~/Kitematic',
              ]
end
