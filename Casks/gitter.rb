cask 'gitter' do
  version '1.177'
  sha256 '0ca1c0d52c342548afbea8d3501282a4ccf494058aa2e23af27e09198a7a30a4'

  url "https://update.gitter.im/osx/Gitter-#{version}.dmg"
  appcast 'https://update.gitter.im/osx/appcast.xml',
          checkpoint: '2e66cc6fbae814070ed373eed07831c2aaf2bcd88f53dd410e8043df4f8ef52b'
  name 'Gitter'
  homepage 'https://gitter.im/'

  app 'Gitter.app'

  uninstall quit: [
                    'com.troupe.gitter.mac.Gitter',
                    'com.troupe.gitter.mac.GitterHelperApp',
                  ]

  zap trash: [
               '~/Library/Application Support/Gitter',
               '~/Library/Caches/com.troupe.gitter.mac.Gitter',
               '~/Library/Preferences/com.troupe.gitter.mac.Gitter.plist',
               '~/Library/Saved Application State/com.troupe.gitter.mac.Gitter.savedState',
             ]
end
