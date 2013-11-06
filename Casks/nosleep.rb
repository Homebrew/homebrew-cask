class Nosleep < Cask
  url 'https://macosx-nosleep-extension.googlecode.com/files/NoSleep-1.3.3.dmg'
  homepage 'https://code.google.com/p/macosx-nosleep-extension/'
  version '1.3.3'
  sha1 '77cbd47def5c9675a3519d69a4afb350c4c2eb04'
  install 'NoSleep.mpkg'
  uninstall :script => 'Uninstall.command'
end
