class MonoMdk < Cask
  url 'http://download.mono-project.com/archive/3.2.4/macos-10-x86/MonoFramework-MDK-3.2.4.macos10.xamarin.x86.pkg'
  homepage 'http://mono-project.com/'
  version '3.2.4'
  sha1 'a0087ce26295d48848d61d679df099fca2439e94'
  install 'MonoFramework-MDK-3.2.4.macos10.xamarin.x86.pkg'
  uninstall :pkgutil => 'com.xamarin.mono-MDK.pkg'
end
