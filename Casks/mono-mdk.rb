cask 'mono-mdk' do
  version '5.4.0.201'
  sha256 'f61ef9dbcf0ceb92ec58e142d8125c7dd6c6956b87d8bbbbae7cbea6333a03f6'

  url "https://download.mono-project.com/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '6c0206cd7b4e66ca36952c28faba171fee84cb5af10ef6e6701b59e97745a88a'
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
