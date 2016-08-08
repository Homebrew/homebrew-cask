cask 'mono-mdk' do
  version '4.4.2.11'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.mono-project.com/archive/#{version.sub(%r{\.[^.]*$}, '')}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  name 'Mono'
  homepage 'http://mono-project.com/'
  license :oss

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-*'
end
