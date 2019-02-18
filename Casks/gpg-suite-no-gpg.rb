cask 'gpg-suite-no-gpg' do
  version '2018.5'
  sha256 'c66ecf48ccf709f704f02097cf9d68ba97b0efba24f7a0b7b46adfd1133cb86a'

  url "https://releases.gpgtools.org/GPG_Suite-#{version}.dmg"
  appcast 'https://gpgtools.org/releases/gka/appcast.xml'
  name 'GPG Suite (without MacGPG)'
  homepage 'https://gpgtools.org/'

  auto_updates true
  conflicts_with cask: [
                         'gpg-suite',
                         'gpg-suite-nightly',
                         'gpg-suite-pinentry',
                         'gpg-suite-no-mail',
                       ]
  depends_on macos: '>= :sierra'

  pkg 'Install.pkg',
      choices: [
                 {
                   'choiceIdentifier' => 'installer_choice_1', # preinstall.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_2', # Libmacgpg_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_3', # LibmacgpgXPC_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_4', # GPGMail_14_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_5', # GPGMail_13_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_6', # GPGMail_12_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_7', # GPGMailLoader_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_8', # GPGServices_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_9', # GPGKeychain_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_10', # GPGPreferences_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_11', # MacGPG2.1_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_12', # Updater_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_13', # pinentry_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_14', # version.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_15', # key.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_16', # CheckPrivateKey.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]

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
end
