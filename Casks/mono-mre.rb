class MonoMre < Cask
  version '3.8.0'
  sha256 '85615c5bd6af84b6e3da263ef4571dc226c03177bc319f9909b86711163073e6'

  url "http://download.mono-project.com/archive/#{version}/macos-10-x86/MonoFramework-MRE-#{version}.macos10.xamarin.x86.pkg"
  homepage 'http://mono-project.com'

  pkg "MonoFramework-MRE-#{version}.macos10.xamarin.x86.pkg"
  uninstall :pkgutil => 'com.xamarin.mono-MRE.pkg'
end
