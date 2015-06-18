cask :v1 => 'cyberghost' do
  version '5.0.14.11'
  sha256 'c1f10d6734482b319d66ef546cf31c35f9386b1befd80de6495e48f47c9d610e'

  url "http://download.cyberghostvpn.com/mac/cg5mac_#{version}.dmg"
  name 'CyberGhost'
  appcast 'http://download.cyberghostvpn.com/mac/updates/cyberghost_mac_update.inf',
          :sha256 => '47b058275557f590e834a9ca94f67f697d05565b020a437251377df35564c9fc'
  homepage 'http://www.cyberghostvpn.com/'
  license :gratis

  app 'CyberGhost 5.app'
end
