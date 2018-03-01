cask 'mono-mdk' do
  version '5.10.0.140'
  sha256 '78d979d1264840ccdd4ab8809bb746b621dcda248aec01a465eb20ce782f4e9d'

  url "https://download.mono-project.com/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'dd09818c71e94eaf058af709a4d12795667d626973dbaeab18bb7314c5c5e5ab'
  name 'Mono'
  homepage 'http://www.mono-project.com/'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall delete:  [
                       "/Library/Frameworks/Mono.framework/Versions/#{version.major_minor_patch}",
                       '/private/etc/paths.d/mono-commands',
                     ],
            pkgutil: 'com.xamarin.mono-*',
            rmdir:   [
                       '/Library/Frameworks/Mono.framework/Versions',
                       '/Library/Frameworks/Mono.framework',
                     ]

  caveats <<~EOS
    Installing #{token} removes mono and mono dependant formula binaries in
    /usr/local/bin and adds #{token} to /private/etc/paths.d/
    You may want to:

      brew unlink {formula} && brew link {formula}

    and/or remove /private/etc/paths.d/mono-commands
  EOS
end
