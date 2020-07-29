cask 'openrct2' do
  version '0.2.6'
  sha256 '0073933b486da10b181bc8a226a140badc64c7cd93f681d769c17b5715221a85'

  # github.com/OpenRCT2/OpenRCT2/ was verified as official when first introduced to the cask
  url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v#{version}/OpenRCT2-#{version}-macos-x86_64.zip"
  appcast 'https://github.com/OpenRCT2/OpenRCT2/releases.atom'
  name 'OpenRCT2'
  homepage 'https://openrct2.io/'

  app 'OpenRCT2.app'
end
