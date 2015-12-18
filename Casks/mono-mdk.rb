cask 'mono-mdk' do
  version '4.2.1.102'
  sha256 'ce886f20e509544cfc4379d10a0e4c574b06f0f97ae09096a06aee0c769e1f48'

  url "http://download.mono-project.com/archive/#{version.sub(%r{\.[^.]*$},'')}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  name 'Mono'
  homepage 'http://mono-project.com'
  license :oss

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall :pkgutil => 'com.xamarin.mono-*'
end
