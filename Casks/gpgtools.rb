cask 'gpgtools' do
  version '2016.08_v2'
  sha256 'f539601722597cef7710e6235fa343759944b4e39b456cb91104857007e9c10e'

  url "https://releases.gpgtools.org/GPG_Suite-#{version}.dmg"
  appcast 'https://gpgtools.org/releases/gka/appcast.xml',
          checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'GPG Suite'
  homepage 'https://gpgtools.org/'
  license :gpl
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
