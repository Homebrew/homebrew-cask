class MonoMdk < Cask
  url 'http://download.mono-project.com/archive/3.2.4/macos-10-x86/MonoFramework-MDK-3.2.4.macos10.xamarin.x86.pkg'
  homepage 'http://mono-project.com/'
  version '3.2.4'
  sha256 '2175f275b23bc43321e1a0a71d7c2e66a7d3aa0c9d8706b6130d9a9e01170d94'
  install 'MonoFramework-MDK-3.2.4.macos10.xamarin.x86.pkg'
  uninstall :pkgutil => 'com.xamarin.mono-MDK.pkg'
end
