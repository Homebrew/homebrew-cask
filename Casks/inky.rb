class Inky < Cask
  version 'latest'
  sha256 :no_check

  url 'https://inky.com/mail/InkyInstall.pkg'
  homepage 'http://inky.com'

  install 'InkyInstall.pkg'
  uninstall :pkgutil => 'com.arcode.inky.*pkg'
end
