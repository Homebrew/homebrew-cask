cask 'kitematic' do
  version '0.9.5.1'
  sha256 '70974b164f74d7dbaa393526a736066820379c07f3a91fe98fa042ad4cc91ee4'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/kitematic/kitematic/releases.atom',
          :sha256 => '99a114dd6c566e0d39d4fc1fa2715588c0d405427555613f696e53d7847e12a6'
  name 'Kitematic'
  homepage 'https://kitematic.com/'
  license :apache

  app 'Kitematic (Beta).app'

  zap :delete => [
                   '~/Library/Application Support/Kitematic',
                   '~/Kitematic',
                 ]
end
