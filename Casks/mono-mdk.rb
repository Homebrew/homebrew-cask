cask 'mono-mdk' do
  version '5.0.1.1'
  sha256 '60eef93597fd4fc0fa617e0bd1df14da506611087e4117ac366b332ecf70a5a0'

  # mono-project.azureedge.net/archive was verified as official when first introduced to the cask
  url "https://mono-project.azureedge.net/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'd1c454ead2e12eb823776ab1e0f18c35cb9372379ac93aacff7107c0c76b8c0b'
  name 'Mono'
  homepage 'http://www.mono-project.com/'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-*'
end
