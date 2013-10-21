class MonoMre < Cask
  url 'http://download.mono-project.com/archive/3.2.3/macos-10-x86/MonoFramework-MRE-3.2.3.macos10.xamarin.x86.pkg'
  homepage 'http://mono-project.com'
  version '3.2.3'
  sha1 '404ced522fcce746eef9f20c2cf40d8304ee2b8e'
  install 'MonoFramework-MRE-3.2.3.macos10.xamarin.x86.pkg'
  uninstall :pkgutil => 'com.xamarin.mono-MRE.pkg'
end
