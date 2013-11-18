class MonoMre < Cask
  url 'http://download.mono-project.com/archive/3.2.4/macos-10-x86/MonoFramework-MRE-3.2.4.macos10.xamarin.x86.pkg'
  homepage 'http://mono-project.com'
  version '3.2.4'
  sha1 '54b539b6feb7df586435499384a8fd3d61b0dfe7'
  install 'MonoFramework-MRE-3.2.4.macos10.xamarin.x86.pkg'
  uninstall :pkgutil => 'com.xamarin.mono-MRE.pkg'
end
