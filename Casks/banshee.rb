cask :v1 => 'banshee' do
  version '2.6.1'
  sha256 '26fc3c77a72860fc2dfaee0741c88e9b8d7b8dac6ece2943e42917112e55c933'

  url "http://ftp.gnome.org/pub/GNOME/binaries/mac/banshee/banshee-#{version}.macosx.intel.dmg"
  homepage 'http://banshee.fm'
  license :mit

  app 'Banshee.app'
end
