cask :v1 => 'mono-mre' do
  version '3.12.0'
  sha256 'af104354a7445f5565aa438bd172824bd00088b6a737b371cce09a15b9ca0491'

  url "http://download.mono-project.com/archive/#{version}/macos-10-x86/MonoFramework-MRE-#{version}.macos10.xamarin.x86.pkg"
  homepage 'http://mono-project.com'
  license :oss

  pkg "MonoFramework-MRE-#{version}.macos10.xamarin.x86.pkg"

  uninstall :pkgutil => 'com.xamarin.mono-MRE.pkg'
end
