cask 'exodus' do
  version '1.35.0'
  sha256 '46b50933ce4b57ad01bf7f9c810b480240c44f6af110f4972fc5fe173981d972'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: 'd0b89dd19fea59f250929c893eeb80b78c2ee5a0a33da6da2a50d880e0e89c80'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
