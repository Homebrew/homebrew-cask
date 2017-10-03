cask 'astro' do
  version '2.0.18,3149'
  sha256 '3f584b9f892d73542dac1ae69522c8840ba16b50d0deaba771c1eea97c169474'

  # pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/Astro-#{version.after_comma}.dmg"
  appcast 'https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/pexappcast.xml',
          checkpoint: '7869d7606e0857110985f266dcf704bf8082135b34412952e13b98a81fe3a517'
  name 'Astro'
  homepage 'https://www.helloastro.com/'

  auto_updates true

  app 'Astro.app'

  uninstall launchctl: 'com.pexlabs.Huskymail.mac.helper',
            quit:      'com.pexlabs.Huskymail.mac'

  zap delete: '~/Library/Caches/com.pexlabs.Huskymail.mac',
      trash:  [
                '~/Library/Application Support/com.pexlabs.Huskymail.mac',
                '~/Library/Preferences/com.pexlabs.Huskymail.mac.plist',
              ]
end
