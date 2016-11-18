cask 'mono-mdk' do
  version '4.6.2.7'
  sha256 'e31963607d9eab70e5e0cece21773cc4be30484159f0b47b661b44b9d821ffd3'

  url "https://download.mono-project.com/archive/#{version.sub(%r{\.[^.]*$}, '')}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  name 'Mono'
  homepage 'http://mono-project.com/'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-*'
end
