cask 'mono-mdk' do
  version '5.0.1.1'
  sha256 '60eef93597fd4fc0fa617e0bd1df14da506611087e4117ac366b332ecf70a5a0'

  # mono-project.azureedge.net/archive was verified as official when first introduced to the cask
  url "https://mono-project.azureedge.net/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'http://www.mono-project.com/docs/about-mono/releases/index.html',
          checkpoint: '36e268757b172e76ecb96591bfd804d477bfa6aa890d0a1bc67bbe86f70e0b7a'
  name 'Mono'
  homepage 'http://www.mono-project.com/'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-*'
end
