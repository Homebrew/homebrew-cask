cask 'kitematic' do
  version '0.10.0'
  sha256 '1076567a11a4f5ae3e22b3fcfaa1c07b9e9198741d591df03a06dcbcaaef95d8'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kitematic/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/kitematic/kitematic/releases.atom',
          checkpoint: 'd11c62240f141319388bd7b94e8148c83e00f2497350ed5a5d30b3ebbb7baf7f'
  name 'Kitematic'
  homepage 'https://kitematic.com/'
  license :apache

  app 'Kitematic (Beta).app'

  zap delete: [
                '~/Library/Application Support/Kitematic',
                '~/Kitematic',
              ]
end
