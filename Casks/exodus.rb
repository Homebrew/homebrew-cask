cask 'exodus' do
  version '1.37.0'
  sha256 'dbaae9c9c81743ab416715529d4ef1150d51ab9c3afd4c459d000774d4a3ad18'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '94f049bdfa545759ec763eeebc5369981209310c2c3bf479fa4efe637b918156'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
