cask 'exodus' do
  version '1.26.1'
  sha256 'f1f0eb409d817425ee8e15e456b87043c5aee47e4e9d341181d5d5bbe3bfae0d'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/Exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '4445d270597d1823bc6a330715fa83bf394bcf472db7f413f3ad18906d38b458'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
