class MonoMdk < Cask
  url 'http://download.mono-project.com/archive/3.2.3/macos-10-x86/MonoFramework-MDK-3.2.3.macos10.xamarin.x86.pkg'
  homepage 'http://mono-project.com/'
  version '3.2.3'
  sha1 '408cfeba56232007a8b690fcd56620c001047a7c'
  install 'MonoFramework-MDK-3.2.3.macos10.xamarin.x86.pkg'
  uninstall :pkgutil => 'com.xamarin.mono-MDK.pkg'
end
