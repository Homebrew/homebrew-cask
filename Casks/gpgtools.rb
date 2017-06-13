cask 'gpgtools' do
  version '2016.10_v2'
  sha256 '8dbc5821876ca5c470d0127087f782ba02a842c52e6e19336cd935db7c5859ab'

  url "https://releases.gpgtools.org/GPG_Suite-#{version}.dmg"
  appcast 'https://gpgtools.org/releases/gka/appcast.xml',
          checkpoint: 'c7e9de96763026580c821554221f7d1227fa76e7d32d6f7b30e876c67e7ed64d'
  name 'GPG Suite'
  homepage 'https://gpgtools.org/'
  gpg "#{url}.sig",
      key_url: 'https://gpgtools.org/GPGTools%2000D026C4.asc'

  auto_updates true

  pkg 'Install.pkg'

  uninstall_postflight do
    %w[gpg gpg2 gpg-agent].map { |exec_name| "/usr/local/bin/#{exec_name}" }.each do |exec|
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
                       ],
            delete:    [
                         '/Library/Services/GPGServices.service',
                         '/Library/Mail/Bundles/GPGMail.mailbundle',
                         '/Network/Library/Mail/Bundles/GPGMail.mailbundle',
                         '/usr/local/MacGPG2',
                         '/private/etc/paths.d/MacGPG2',
                         '/private/etc/manpaths.d/MacGPG2',
                         '/private/tmp/gpg-agent',
                         '/Library/PreferencePanes/GPGPreferences.prefPane',
                         '/Library/Application Support/GPGTools',
                         '/Library/Frameworks/Libmacgpg.framework',
                       ]

  zap delete: [
                '~/Library/Services/GPGServices.service',
                '~/Library/Mail/Bundles/GPGMail.mailbundle',
                '~/Library/PreferencePanes/GPGPreferences.prefPane',
                '~/Library/LaunchAgents/org.gpgtools.*',
                '~/Library/Preferences/org.gpgtools.*',
                '~/Library/Containers/com.apple.mail/Data/Library/Preferences/org.gpgtools.*',
                '~/Library/Application Support/GPGTools',
                '~/Library/Frameworks/Libmacgpg.framework',
                '~/Containers/com.apple.mail/Data/Library/Frameworks/Libmacgpg.framework',
                '~/Library/Caches/org.gpgtools.gpg*',
              ]

  caveats do
    files_in_usr_local
  end
end
