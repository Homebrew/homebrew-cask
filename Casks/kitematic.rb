cask 'kitematic' do
  version '0.9.5.1'
  sha256 '70974b164f74d7dbaa393526a736066820379c07f3a91fe98fa042ad4cc91ee4'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/kitematic/kitematic/releases.atom',
          :sha256 => 'bc2e4c8b498952d720949fc2d7c6d44ca641a9d6bdf6f2e88827817f5c0595a7'
  name 'Kitematic'
  homepage 'https://kitematic.com/'
  license :apache

  app 'Kitematic (Beta).app'

  zap :delete => [
                   '~/Library/Application Support/Kitematic',
                   '~/Kitematic',
                 ]
end
