cask :v1 => 'gpgtools' do
  version '2013.10.22'
  sha256 'd37ccf01e5ddd07dd84b76574e99b605ca9ead89cb0c6c126f4045e271eb3841'

  url "https://releases.gpgtools.org/GPG%20Suite%20-%20#{version}.dmg"
  gpg "#{url}.sig",
      :key_url => 'https://gpgtools.org/GPGTools%2000D026C4.asc'
  homepage 'https://gpgtools.org/index.html'
  license :unknown

  pkg 'Install.pkg'
  # todo, remove all ENV variables
  postflight do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/local/MacGPG2/libexec/fixGpgHome', Etc.getpwuid(Process.euid).name,
                                                    ENV['GNUPGHOME'] ? ENV['GNUPGHOME'] : Pathname.new(File.expand_path('~')).join('.gnupg')
  end

  uninstall :pkgutil => 'org.gpgtools.*',
            :quit => [
                      'com.apple.mail',
                      'org.gpgtools.gpgkeychainaccess',
                      'org.gpgtools.gpgservices',
                     ],
            :launchctl => [
                           'org.gpgtools.macgpg2.shutdown-gpg-agent',
                           'org.gpgtools.Libmacgpg.xpc',
                           'org.gpgtools.gpgmail.enable-bundles',
                           'org.gpgtools.gpgmail.user-uuid-patcher',
                           'org.gpgtools.gpgmail.uuid-patcher',
                           'org.gpgtools.macgpg2.fix',
                           'org.gpgtools.macgpg2.updater',
                          ],
            :delete => [
                        '/Applications/GPG Keychain Access.app',
                        '/Library/Services/GPGServices.service',
                        '/Library/Mail/Bundles/GPGMail.mailbundle',
                        '/Library/PreferencePanes/GPGPreferences.prefPane',
                       ]
  uninstall_postflight do
    system '/bin/bash', '-c', '[[ "$(/usr/bin/readlink /usr/local/bin/gpg2)"      =~ MacGPG2 ]] && /bin/rm -- /usr/local/bin/gpg2'
    system '/bin/bash', '-c', '[[ "$(/usr/bin/readlink /usr/local/bin/gpg)"       =~ MacGPG2 ]] && /bin/rm -- /usr/local/bin/gpg'
    system '/bin/bash', '-c', '[[ "$(/usr/bin/readlink /usr/local/bin/gpg-agent)" =~ MacGPG2 ]] && /bin/rm -- /usr/local/bin/gpg-agent'
  end

  zap       :delete => [
                        '~/Library/Services/GPGServices.service',
                        '~/Library/Mail/Bundles/GPGMail.mailbundle',
                        '~/Library/PreferencePanes/GPGPreferences.prefPane',
                       ]

  caveats do
    files_in_usr_local
  end
end
