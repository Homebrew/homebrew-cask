cask 'astro' do
  version '3.0.15,4135'
  sha256 '2a7ae8f9f88df720ee17f097c81f07a8cdb3f345e1783f36b5e5af7d7c146018'

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
