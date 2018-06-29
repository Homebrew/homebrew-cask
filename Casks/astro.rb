cask 'astro' do
  version '3.0.13,4066'
  sha256 '83fa7373d09c959f26068bd4b044ddb50a5cefc3b86e1eac3c40502d8e4eb730'

  # pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/Astro-#{version.after_comma}.dmg"
  appcast 'https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/pexappcast.xml'
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
