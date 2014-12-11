cask :v1 => 'mono-mre' do
  version '3.10.0'
  sha256 'c9973d1206a36b71964a8b173d452780c19200cac2955723e0d48f969a3f6d28'

  url "http://download.mono-project.com/archive/#{version}/macos-10-x86/MonoFramework-MRE-#{version}.macos10.xamarin.x86.pkg"
  homepage 'http://mono-project.com'
  license :oss

  pkg "MonoFramework-MRE-#{version}.macos10.xamarin.x86.pkg"

  uninstall :pkgutil => 'com.xamarin.mono-MRE.pkg'
end
