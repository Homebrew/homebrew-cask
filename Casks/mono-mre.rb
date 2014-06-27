class MonoMre < Cask
  version '3.4.0'
  sha256 '3f4b805513c564e551e42d7043f783d29e7580617fda8ee974f6841c8b358c91'

  url 'http://download.mono-project.com/archive/3.4.0/macos-10-x86/MonoFramework-MRE-3.4.0.macos10.xamarin.x86.pkg'
  homepage 'http://mono-project.com'

  install 'MonoFramework-MRE-3.4.0.macos10.xamarin.x86.pkg'
  uninstall :pkgutil => 'com.xamarin.mono-MRE.pkg'
end
