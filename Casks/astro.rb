cask 'astro' do
  version '2.0.19,3171'
  sha256 'b8134bdc76298162e3fb1c500f9b4255295ecee46f91e1a5782a680ab5021716'

  # pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com was verified as official when first introduced to the cask
  url "https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/Astro-#{version.after_comma}.dmg"
  appcast 'https://pexlabs-updates-xvuif5mcicazzducz2j2xy3lki.s3-us-west-2.amazonaws.com/pexappcast.xml',
          checkpoint: 'aabaf1f9fd595097dc59e771a3485a74ee293a2778008609494aee358171edda'
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
