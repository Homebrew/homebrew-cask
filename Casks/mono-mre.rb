class MonoMre < Cask
  url 'http://download.mono-project.com/archive/3.2.4/macos-10-x86/MonoFramework-MRE-3.2.4.macos10.xamarin.x86.pkg'
  homepage 'http://mono-project.com'
  version '3.2.4'
  sha256 'e817be83621ae16e8ccf2a68fbfc437d682f3ff07540f81513608652ee40070e'
  install 'MonoFramework-MRE-3.2.4.macos10.xamarin.x86.pkg'
  uninstall :pkgutil => 'com.xamarin.mono-MRE.pkg'
end
