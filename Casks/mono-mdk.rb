cask 'mono-mdk' do
  version '4.8.0.495'
  sha256 '09c2e30fb32112d3f4b1e5329119357e5728b08ba8131bbbc643d8adb9456522'

  # mono-project.azureedge.net/archive was verified as official when first introduced to the cask
  url "https://mono-project.azureedge.net/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  name 'Mono'
  homepage 'http://www.mono-project.com/'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-*'
end
