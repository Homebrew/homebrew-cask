cask 'astro' do
  version '2.0.20,3183'
  sha256 '6d71eff13e7a18961a1c54eb70919d2ced27d783373587afa939df88eadc99f8'

  # pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/Astro-#{version.after_comma}.dmg"
  appcast 'https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/pexappcast.xml',
          checkpoint: 'b62c9e05a3e9cd282a5980547a75cf316a2935d5158fd2c079d89e9442cf6278'
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
