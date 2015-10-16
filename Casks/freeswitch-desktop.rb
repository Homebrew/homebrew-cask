cask :v1 => 'freeswitch-desktop' do
  version '1.1.0'
  sha256 'b776c83232b233d3b9d4f3c96503284749be490819c6310a30402acc6bc9ba26'

  url "https://github.com/pablote/fs-mgmt/releases/download/v#{version}/freeswitch-desktop-osx64.zip"
  appcast 'https://github.com/pablote/fs-mgmt/releases.atom'
  name 'Freeswitch Desktop'
  homepage 'https://github.com/pablote/fs-mgmt'
  license :apache

  app 'Freeswitch Desktop.app'
end
