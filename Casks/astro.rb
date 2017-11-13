cask 'astro' do
  version '2.0.24,3267'
  sha256 'f78572a0258adc6dca0a9e47092a44fd21e3f0db4548094c8a537652c3d29358'

  # pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/Astro-#{version.after_comma}.dmg"
  appcast 'https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/pexappcast.xml',
          checkpoint: '541578d702c96a48300e966f77d3c90843ba3712b0b5fd782b1feee36dedb78d'
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
