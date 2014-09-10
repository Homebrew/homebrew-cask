class MonoMdk < Cask
  version '3.6.0'
  sha256 '04a4543b00510f5df7d52eac3cd8583e44a30fdf12af536646de9351f360647e'

  url "http://download.mono-project.com/archive/#{version}/macos-10-x86/MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"
  homepage 'http://mono-project.com/'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"
  uninstall :pkgutil => 'com.xamarin.mono-MDK.pkg'
end
