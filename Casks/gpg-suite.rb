cask 'gpg-suite' do
  version '2017.2'
  sha256 'e48275495006c135aab647833e6a7a383f7e153fa657147723939c0a75dfa2f2'

  url "https://releases.gpgtools.org/GPG_Suite-#{version}.dmg"
  appcast 'https://gpgtools.org/releases/gka/appcast.xml',
          checkpoint: '63416a60d542f960bdf7f581254990ef4ee58f3c7518706e441031b8a4e9f426'
  name 'GPG Suite'
  homepage 'https://gpgtools.org/'
  gpg "#{url}.sig", key_url: 'https://gpgtools.org/GPGTools%2000D026C4.asc'

  auto_updates true
  conflicts_with cask: [
                         'gpg-suite-beta',
                         'gpg-suite-nightly',
                       ]

  pkg 'Install.pkg'

  uninstall_postflight do
    ['gpg', 'gpg2', 'gpg-agent'].map { |exec_name| "/usr/local/bin/#{exec_name}" }.each do |exec|
      File.rm(exec) if File.exist?(exec) && File.readlink(exec).include?('MacGPG2')
    end
  end

  uninstall script:    {
                         executable: "#{staged_path}/Uninstall.app/Contents/Resources/GPG Suite Uninstaller.app/Contents/Resources/uninstall.sh",
                         sudo:       true,
                       },
            pkgutil:   'org.gpgtools.*',
            quit:      [
                         'com.apple.mail',
                         'org.gpgtools.gpgkeychainaccess',
                         'org.gpgtools.gpgkeychain',
                         'org.gpgtools.gpgservices',
                         # TODO: add "killall -kill gpg-agent"
                       ],
            launchctl: [
                         'org.gpgtools.Libmacgpg.xpc',
                         'org.gpgtools.gpgmail.patch-uuid-user',
                         'org.gpgtools.macgpg2.fix',
                         'org.gpgtools.macgpg2.shutdown-gpg-agent',
                         'org.gpgtools.macgpg2.updater',
                         'org.gpgtools.macgpg2.gpg-agent',
                         'org.gpgtools.gpgmail.enable-bundles',
                         'org.gpgtools.gpgmail.user-uuid-patcher',
                         'org.gpgtools.gpgmail.uuid-patcher',
                         'org.gpgtools.updater',
                       ],
            delete:    [
                         '/Library/Services/GPGServices.service',
                         '/Library/Mail/Bundles/GPGMail.mailbundle',
                         '/Library/Mail/Bundles.gpgmail*',
                         '/Network/Library/Mail/Bundles/GPGMail.mailbundle',
                         '/usr/local/MacGPG2',
                         '/private/etc/paths.d/MacGPG2',
                         '/private/etc/manpaths.d/MacGPG2',
                         '/private/tmp/gpg-agent',
                         '/Library/PreferencePanes/GPGPreferences.prefPane',
                         '/Library/Application Support/GPGTools',
                         '/Library/Frameworks/Libmacgpg.framework',
                       ]

  zap trash: [
               '~/Library/Services/GPGServices.service',
               '~/Library/Mail/Bundles/GPGMail.mailbundle',
               '~/Library/PreferencePanes/GPGPreferences.prefPane',
               '~/Library/LaunchAgents/org.gpgtools.*',
               '~/Library/Containers/com.apple.mail/Data/Library/Preferences/org.gpgtools.*',
               '~/Library/Frameworks/Libmacgpg.framework',
               '~/Containers/com.apple.mail/Data/Library/Frameworks/Libmacgpg.framework',
               '~/Library/Caches/org.gpgtools.gpg*',
               '~/Library/Application Support/GPGTools',
               '~/Library/Preferences/org.gpgtools.*',
             ]

  caveats do
    files_in_usr_local
  end
end
