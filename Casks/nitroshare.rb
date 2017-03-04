cask 'nitroshare' do
  version '0.3.3'
  sha256 'a22ee3450f2dc8b72b98709fc44cc7cac4f43e95bb3a367b2b523331c82e0ba2'

  url "https://launchpad.net/nitroshare/#{version.major_minor}/#{version}/+download/nitroshare-#{version}-osx.dmg"
  appcast 'https://github.com/nitroshare/nitroshare-desktop/releases.atom',
          checkpoint: '5e7923cad51870abc31d5adc65dedf76825b71f719a75ef05f3057ece9c62aff'
  name 'NitroShare'
  homepage 'https://launchpad.net/nitroshare'

  app 'NitroShare.app'
end
