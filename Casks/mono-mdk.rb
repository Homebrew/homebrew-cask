class MonoMdk < Cask
  version '3.8.0'
  sha256 '88daab3fc775b771b5fb15ae0d14fad9a6f04b3e67733952a394ef84fb01ed72'

  url "http://download.mono-project.com/archive/#{version}/macos-10-x86/MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"
  homepage 'http://mono-project.com/'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"
  uninstall :pkgutil => 'com.xamarin.mono-MDK.pkg'
end
