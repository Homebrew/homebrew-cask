class AlinofTimer < Cask
  version :latest
  sha256 :no_check

  url 'http://www.alinofsoftware.ch/resources/AlinofTimer.pkg'
  homepage 'http://www.alinofsoftware.ch/en/products/products-timer/index.html'

  pkg 'AlinofTimer.pkg', :allow_untrusted => true
  uninstall :pkgutil => 'com.alinofsoftware.alinoftimer'
end
