cask 'banshee' do
  version '2.6.1'
  sha256 '26fc3c77a72860fc2dfaee0741c88e9b8d7b8dac6ece2943e42917112e55c933'

  # gnome.org/pub/GNOME/binaries/mac/banshee was verified as official when first introduced to the cask
  url "https://ftp.gnome.org/pub/GNOME/binaries/mac/banshee/banshee-#{version}.macosx.intel.dmg"
  name 'Banshee'
  homepage 'http://banshee.fm'

  app 'Banshee.app'
end
