cask 'exodus' do
  version '1.33.1'
  sha256 'e2fc7862492350f7fbda02df8757d41b99c007040690fef1d6f698d77ffb86b8'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: 'ffb83d411b6d5b6cbde18e0167ed4de9710fe2722c50cd797ab04ca7d5770968'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
