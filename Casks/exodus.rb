cask 'exodus' do
  version '1.39.4'
  sha256 '4e44b3c8a33f7abd91b431866f1eb40aa951f417c51aa4cf3ef7b1474647329e'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: 'e9511058cd5bfaf30454509440d45dfa49b6d965d898b4377e9f678379bd1de8'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
