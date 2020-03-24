cask 'openrct2' do
  version '0.2.5'
  sha256 '788ea7345c8d52ab4feda3ba7d8d5d67cf5c049ccae5c255727011e23b320efa'

  # github.com/OpenRCT2/OpenRCT2 was verified as official when first introduced to the cask
  url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-#{version}-macos-x86_64.zip"
  appcast 'https://github.com/OpenRCT2/OpenRCT2/releases.atom'
  name 'OpenRCT2'
  homepage 'https://openrct2.io/'

  app 'OpenRCT2.app'
end
