cask 'kui' do
  version '8.9.3'
  sha256 '3058c9d747d2cdc9107d1ccfda58c8490e1fc82fd3da22d4383f212a1610c06b'

  # github.com/IBM/kui was verified as official when first introduced to the cask
  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  appcast 'https://github.com/IBM/kui/releases.atom'
  name 'Kui'
  homepage 'https://kui.tools/'

  app 'Kui-darwin-x64/Kui.app'
end
