cask 'mono-mdk' do
  version '5.2.0.224'
  sha256 'd29837e97ab9708679eb9c22d6a1a1907af7ab4cd1c44e8628f812791ae644eb'

  # mono-project.azureedge.net/archive was verified as official when first introduced to the cask
  url "https://mono-project.azureedge.net/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'd060f69255a71e32aa0b00d74750c04cd5fe27df410929deec0abac8fe2956bb'
  name 'Mono'
  homepage 'http://www.mono-project.com/'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall delete:  '/private/etc/paths.d/mono-commands',
            pkgutil: 'com.xamarin.mono-*'

  caveats <<-EOS.undent
    Installing #{token} removes mono and mono dependant formula binaries in
    /usr/local/bin and adds #{token} to /private/etc/paths.d/
    You may want to:

      brew unlink {formula} && brew link {formula}

    and/or remove /private/etc/paths.d/mono-commands
  EOS
end
