cask 'mono-mdk' do
  version '4.6.1.5'
  sha256 'f3796a14597d3886fa224a5c3b85adefd13bbd1a7ea0b4263aae5f5c23c1eadc'

  url "https://download.mono-project.com/archive/#{version.sub(%r{\.[^.]*$}, '')}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  name 'Mono'
  homepage 'http://mono-project.com/'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-*'
end
