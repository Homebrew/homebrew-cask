cask 'exodus' do
  version '1.39.3'
  sha256 '38735b9f0e473cee73e4ba5cf22c4093861de7e1659f972444365dc3de4e437b'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '83cf6dc46133a6735af8ac34f93f6ad0ca587b74ca9eafee7c2c521fda7160c2'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
