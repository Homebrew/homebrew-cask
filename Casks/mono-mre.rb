class MonoMre < Cask
  version '3.6.0'
  sha256 '9ea30e00491cbc2feb6a57725d96c8fa42066254e03dec498b0a1683393827ba'

  url "http://download.mono-project.com/archive/#{version}/macos-10-x86/MonoFramework-MRE-#{version}.macos10.xamarin.x86.pkg"
  homepage 'http://mono-project.com'

  pkg "MonoFramework-MRE-#{version}.macos10.xamarin.x86.pkg"
  uninstall :pkgutil => 'com.xamarin.mono-MRE.pkg'
end
