class Inky < Cask
  url 'https://inky.com/mail/InkyInstall.pkg'
  homepage 'http://inky.com'
  version 'latest'
  sha256 :no_check
  install 'InkyInstall.pkg'
  uninstall :pkgutil => 'com.arcode.inky.*pkg'
end
