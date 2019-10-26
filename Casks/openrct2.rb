cask 'openrct2' do
  version '0.2.3'
  sha256 'a44489657804ba580b2e6fe524b40376b002c4cd952aa9cf8b2860c5d5705685'

  # github.com/OpenRCT2/OpenRCT2 was verified as official when first introduced to the cask
  url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-#{version}-macos-x64.zip"
  appcast 'https://github.com/OpenRCT2/OpenRCT2/releases.atom'
  name 'OpenRCT2'
  homepage 'https://openrct2.io/'

  app 'OpenRCT2.app'
end
