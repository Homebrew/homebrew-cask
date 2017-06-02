cask 'exodus' do
  version '1.26.2'
  sha256 '0277e8d942d7f43443808a1990432d022b11c1071b853b541ad2603159318d00'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/Exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '92d4dcc8c792925c0d6d43eae22184d1b532e4b2c977875740627ecb8984e568'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
