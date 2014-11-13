cask :v1 => 'mono-mre' do
  version '3.10.0'
  sha256 'e5f7f42d9ba778aca6774921a0803d5ee73bc01d0674d058e557dcf19f792dd1'

  url "http://download.mono-project.com/archive/#{version}/macos-10-x86/MonoFramework-MRE-#{version}.macos10.xamarin.x86.pkg"
  homepage 'http://mono-project.com'
  license :oss

  pkg "MonoFramework-MRE-#{version}.macos10.xamarin.x86.pkg"
  uninstall :pkgutil => 'com.xamarin.mono-MRE.pkg'
end
