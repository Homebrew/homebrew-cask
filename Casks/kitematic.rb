cask 'kitematic' do
  version '0.10.3'
  sha256 '87d73a101cd6bfe5cfe0dda68ed114e8529496370447188617bc064e2888d502'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/kitematic/kitematic/releases.atom',
          checkpoint: '99a114dd6c566e0d39d4fc1fa2715588c0d405427555613f696e53d7847e12a6'
  name 'Kitematic'
  homepage 'https://kitematic.com/'
  license :apache

  app 'Kitematic (Beta).app'

  zap delete: [
                '~/Library/Application Support/Kitematic',
                '~/Kitematic',
              ]
end
