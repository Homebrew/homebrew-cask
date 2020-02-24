cask 'pext' do
  version '0.28'
  sha256 '28f09c00a8ae0263b33fb8f7f0d5663ed32d23c0524ad6495c346f524d38a4af'

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext-#{version}.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.io/'

  app 'Pext.app'
end
