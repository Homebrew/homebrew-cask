class Inky < Cask
  url 'http://inky.com/mail/InkyInstall.pkg'
  homepage 'http://inky.com'
  version 'latest'
  no_checksum
  install 'InkyInstall.pkg'
  uninstall :pkgutil => 'com.arcode.inky.*pkg'
end
