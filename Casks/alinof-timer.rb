cask :v1 => 'alinof-timer' do
  version :latest
  sha256 :no_check

  url 'http://www.alinofsoftware.ch/resources/AlinofTimer.pkg'
  homepage 'http://www.alinofsoftware.ch/en/products/products-timer/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'AlinofTimer.pkg', :allow_untrusted => true

  uninstall :pkgutil => 'com.alinofsoftware.alinoftimer'
end
