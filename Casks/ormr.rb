cask :v1 => 'ormr' do
  version :latest
  sha256 :no_check

  url 'http://getormr.com/dn/Ormr.pkg'
  homepage 'http://getormr.com/home/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Ormr.pkg'

  uninstall :pkgutil => 'com.sadcatsoft.ormr.Ormr.pkg'
end
