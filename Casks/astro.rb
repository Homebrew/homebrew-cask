cask 'astro' do
  version '3.0.1,3698'
  sha256 'd2b81e8f7d5248f836cc69bbdcba20eac20b21171ed88591c3e7ead42e6e8feb'

  # pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/Astro-#{version.after_comma}.dmg"
  appcast 'https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/pexappcast.xml',
          checkpoint: '9a14a28b34f42f5acede2cb256df75c1843e64e86d1cb02ea80b3937fd84920d'
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
