cask 'mono-mdk' do
  version '6.0.0.334'
  sha256 'c8d9608173aab27627a12f26a1d2d9ac8d13a487e3ca55680bbe599c40a769dc'

  url "https://download.mono-project.com/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://www.mono-project.com/download/stable/'
  name 'Mono'
  homepage 'https://www.mono-project.com/'

  conflicts_with cask: 'mono-mdk516'

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
