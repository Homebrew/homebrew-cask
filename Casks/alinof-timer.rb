cask :v1 => 'alinof-timer' do
  version :latest
  sha256 :no_check

  url 'http://www.alinofsoftware.ch/resources/AlinofTimer.pkg'
  homepage 'http://www.alinofsoftware.ch/en/products/products-timer/index.html'
  license :unknown

  pkg 'AlinofTimer.pkg', :allow_untrusted => true

  uninstall :pkgutil => 'com.alinofsoftware.alinoftimer'
end
