cask 'openrct2' do
  version '0.2.4'
  sha256 '81b43d1c787df643092332e64b3ce5a1b18ffde75af637c5fc802a710ebade2e'

  # github.com/OpenRCT2/OpenRCT2 was verified as official when first introduced to the cask
  url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-#{version}-macos-x86_64.zip"
  appcast 'https://github.com/OpenRCT2/OpenRCT2/releases.atom'
  name 'OpenRCT2'
  homepage 'https://openrct2.io/'

  app 'OpenRCT2.app'
end
