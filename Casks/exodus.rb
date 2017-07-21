cask 'exodus' do
  version '1.30.0'
  sha256 '8b9d55875ff5742fddfd37d8e1a662f94c5800c808dacffbc992b78008fedf0c'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/Exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '5940ee17b192356966a6cafc44d5e6ed0f412b2c141d00d374e035c419f15c09'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
