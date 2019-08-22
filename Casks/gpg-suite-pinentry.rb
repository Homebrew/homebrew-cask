cask 'gpg-suite-pinentry' do
  version '2019.1'
  sha256 'f85e15cfb01543ad6e09dd46e921c248dba10d2dbafa1449c234979ef5a3728f'

  url "https://releases.gpgtools.org/GPG_Suite-#{version}.dmg"
  appcast 'https://gpgtools.org/releases/gka/appcast.xml'
  name 'GPG Suite Pinentry'
  homepage 'https://gpgtools.org/'

  auto_updates true
  conflicts_with cask: [
                         'gpg-suite',
                         'gpg-suite-nightly',
                       ]
  depends_on macos: '>= :sierra'

  pkg 'Install.pkg',
      choices: [
                 {
                   'choiceIdentifier' => 'installer_choice_1', # preinstall.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_2', # Libmacgpg_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_3', # LibmacgpgXPC_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_4', # GPGMail_14_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_5', # GPGMail_13_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_6', # GPGMail_12_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_7', # GPGMailLoader_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_8', # GPGServices_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_9', # GPGKeychain_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_10', # GPGPreferences_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_11', # MacGPG2.1_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_12', # Updater_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_13', # pinentry_Core.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_14', # version.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_15', # key.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'installer_choice_16', # CheckPrivateKey.pkg
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
               ]

  uninstall pkgutil: 'org.gpgtools.pinentry.*',
            quit:    'org.gpgtools.pinentry-mac',
            delete:  '/usr/local/MacGPG2'

  zap trash: '~/Library/Preferences/org.gpgtools.common.plist'

  caveats do
    files_in_usr_local
  end
end
