cask 'mono-mdk' do
  version '5.0.1.1'
  sha256 '60eef93597fd4fc0fa617e0bd1df14da506611087e4117ac366b332ecf70a5a0'

  # mono-project.azureedge.net/archive was verified as official when first introduced to the cask
  url "https://mono-project.azureedge.net/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '08fef545d50bd40a08d194b082bba6752cb27453d3381fd4c0504bdf18dd6ab2'
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
