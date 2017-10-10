cask 'exodus' do
  version '1.35.5'
  sha256 'c1d420857f3a16fd30a5c2b56bfbf897a28f5989e21da1124d92a10196357d71'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: 'e096d7333f0312c914b2a2272573c532deeb65becba1168c8081cf15dfb2c334'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
