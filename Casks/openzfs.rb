cask :v1 => 'openzfs' do
  version       '1.3.1'
  sha256        '7d0001f318e70f7a5ee87273a1f1cc7912908677ea9565702d05282c1ebca8b8'

  revision       = "-r2"

  url "https://openzfsonosx.org/w/images/7/71/OpenZFS_on_OS_X_#{version}#{revision}.dmg"

  name 'OpenZFS on OS X'
  homepage 'https://openzfsonosx.org'
  license :oss

  pkg "OpenZFS on OS X #{version} Mavericks or higher.pkg"

  uninstall :pkgutil => 'net.lundman.openzfs.*'
end
