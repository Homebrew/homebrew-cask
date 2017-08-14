cask 'mono-mdk' do
  version '5.2.0.215'
  sha256 'bf7e7c0439783015168662833754bd83f1a9ffe5970919213a762f313cc53909'

  # mono-project.azureedge.net/archive was verified as official when first introduced to the cask
  url "https://mono-project.azureedge.net/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '3440e32fa546571a45474a6bc9bbe8047cb1f8035af1679c502e49f1ac9de4d7'
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
