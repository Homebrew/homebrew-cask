cask 'astro' do
  version '2.0.27,3410'
  sha256 'af6906dd7ee1866bc605ee8877a2f8116bc532c0db45b762d79965c44fc9ae63'

  # pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/Astro-#{version.after_comma}.dmg"
  appcast 'https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/pexappcast.xml',
          checkpoint: '532a1152e0202a846bf3c9413218bd777779a36a723a555aea78477ff67818df'
  name 'Astro'
  homepage 'https://www.helloastro.com/'

  auto_updates true

  app 'Astro.app'

  uninstall launchctl: 'com.pexlabs.Huskymail.mac.helper',
            quit:      'com.pexlabs.Huskymail.mac'

  zap trash: [
               '~/Library/Application Support/com.pexlabs.Huskymail.mac',
               '~/Library/Caches/com.pexlabs.Huskymail.mac',
               '~/Library/Preferences/com.pexlabs.Huskymail.mac.plist',
             ]
end
