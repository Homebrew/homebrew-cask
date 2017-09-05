cask 'exodus' do
  version '1.33.2'
  sha256 '64f289fd74ca04f06063dbbad3310ac6bb57dda55e51749d018e6fabc8f82eca'

  # exodusbin.azureedge.net was verified as official when first introduced to the cask
  url "https://exodusbin.azureedge.net/releases/exodus-macos-#{version}.dmg"
  appcast 'https://www.exodus.io/releases/',
          checkpoint: '567a0ecd874058dc4a8d2233340866131d07bbda35ece1885717228989ad9abd'
  name 'Exodus'
  homepage 'https://www.exodus.io/'

  app 'Exodus.app'
end
