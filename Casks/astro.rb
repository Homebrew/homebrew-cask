cask 'astro' do
  version '3.0.0,3693'
  sha256 'c18db2edaee328a258b85bda766fcedf7c61dc42857639e4740815eb7dcf492a'

  # pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/Astro-#{version.after_comma}.dmg"
  appcast 'https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/pexappcast.xml',
          checkpoint: 'd1a1e104f730d711d4513d1128e05be6baadf882d73c7bd3da8cb64dd94586bf'
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
