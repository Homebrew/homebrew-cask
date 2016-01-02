cask 'gpgtools' do
  version '2015.09'
  sha256 '0ec0f4bb66ef660d3c3b0433dd3186e093a1b4f23bf8fac8b4ebca9fa6d80420'

  url "https://releases.gpgtools.org/GPG_Suite-#{version}.dmg"
  gpg "#{url}.sig",
      :key_url => 'https://gpgtools.org/GPGTools%2000D026C4.asc'
  name 'GPG Suite'
  appcast 'https://gpgtools.org/releases/gka/appcast.xml',
          :sha256 => '23d1d5dea53c4c380bed5f7b6331060539e3acd62cd844bda834388d0a26da81'
  homepage 'https://gpgtools.org/'
  license :gpl

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
                        '/Applications/GPG Keychain.app',
                        '/usr/local/MacGPG2',
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
                        # todo expand/glob for ~/Library/Caches/org.gpgtools.gpg*
                       ]

  caveats do
    files_in_usr_local
  end
end
