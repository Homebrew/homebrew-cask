cask 'mono-mdk' do
  version '4.8.0.520'
  sha256 'e9c8e8b534cf7bd411b37700389fcea5b5f06dac5b30345e9f58e8b95093fa01'

  # mono-project.azureedge.net/archive was verified as official when first introduced to the cask
  url "https://mono-project.azureedge.net/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  name 'Mono'
  homepage 'http://www.mono-project.com/'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-*'
end
