cask :v1 => 'mono-mdk' do
  version '3.10.0'
  sha256 'e71b558c2b7857c124ccbb5e73bc622733e1cd5da494a7b5d9d14a90f555c1b8'

  url "http://download.mono-project.com/archive/#{version}/macos-10-x86/MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"
  homepage 'http://mono-project.com/'
  license :oss

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"

  uninstall :pkgutil => 'com.xamarin.mono-MDK.pkg'
end
