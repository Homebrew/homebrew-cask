cask :v1 => 'mono-mdk' do
  version '4.0.4.4'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://download.mono-project.com/archive/4.0.4/macos-10-x86/MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"
  name 'Mono'
  homepage 'http://mono-project.com'
  license :oss

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"

  uninstall :pkgutil => 'com.xamarin.mono-MDK.pkg'
end
