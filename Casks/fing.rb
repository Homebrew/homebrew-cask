cask :v1 => 'fing' do
  version '2.2'
  sha256 '6794afb734c266b0a9617209688259bf04ad8738cb9126fbb922d8816c7d74aa'

  url 'http://www.overlooksoft.com/packages/download?plat=osx'
  homepage 'http://www.overlooksoft.com/'
  license :unknown

  pkg 'overlook-fing-2.2.pkg'

  uninstall :pkgutil => 'com.Overlook.Fing'
end
