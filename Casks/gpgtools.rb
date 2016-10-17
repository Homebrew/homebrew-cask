cask 'gpgtools' do
  version '2016.10_v2'
  sha256 '8dbc5821876ca5c470d0127087f782ba02a842c52e6e19336cd935db7c5859ab'

  url "https://releases.gpgtools.org/GPG_Suite-#{version}.dmg"
  appcast 'https://gpgtools.org/releases/gka/appcast.xml',
          checkpoint: 'a5e963e76b0096573035e1c77860a1d65a312afde1b4354fc1e7c2dc31a0ab08'
  name 'GPG Suite'
  homepage 'https://gpgtools.org/'
  gpg "#{url}.sig",
      key_url: 'https://gpgtools.org/GPGTools%2000D026C4.asc'

  auto_updates true

  pkg 'Install.pkg'

  # TODO: remove all ENV variables
  postflight do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/local/MacGPG2/libexec/fixGpgHome', Etc.getpwuid(Process.euid).name,
           ENV['GNUPGHOME'] ? ENV['GNUPGHOME'] : Pathname.new(File.expand_path('~')).join('.gnupg')
  end

  uninstall_postflight do
    system '/bin/bash', '-c', '[[ "$(/usr/bin/readlink /usr/local/bin/gpg2)"      =~ MacGPG2 ]] && /bin/rm -- /usr/local/bin/gpg2'
    system '/bin/bash', '-c', '[[ "$(/usr/bin/readlink /usr/local/bin/gpg)"       =~ MacGPG2 ]] && /bin/rm -- /usr/local/bin/gpg'
    system '/bin/bash', '-c', '[[ "$(/usr/bin/readlink /usr/local/bin/gpg-agent)" =~ MacGPG2 ]] && /bin/rm -- /usr/local/bin/gpg-agent'
  end

  uninstall pkgutil:   'org.gpgtools.*',
            quit:      [
                         'com.apple.mail',
                         'org.gpgtools.gpgkeychainaccess',
                         'org.gpgtools.gpgservices',
                       ],
            launchctl: [
                         'org.gpgtools.macgpg2.shutdown-gpg-agent',
                         'org.gpgtools.Libmacgpg.xpc',
                         'org.gpgtools.gpgmail.enable-bundles',
                         'org.gpgtools.gpgmail.user-uuid-patcher',
                         'org.gpgtools.gpgmail.uuid-patcher',
                         'org.gpgtools.macgpg2.fix',
                         'org.gpgtools.macgpg2.updater',
                       ],
            delete:    [
                         '/Applications/GPG Keychain Access.app',
                         '/Applications/GPG Keychain.app',
                         '/usr/local/MacGPG2',
                         '/Library/Services/GPGServices.service',
                         '/Library/Mail/Bundles/GPGMail.mailbundle',
                         '/Library/PreferencePanes/GPGPreferences.prefPane',
                       ]

  zap delete: [
                '~/Library/Services/GPGServices.service',
                '~/Library/Mail/Bundles/GPGMail.mailbundle',
                '~/Library/PreferencePanes/GPGPreferences.prefPane',
                # TODO: expand/glob for ~/Library/Caches/org.gpgtools.gpg*
              ]

  caveats do
    files_in_usr_local
  end
end
