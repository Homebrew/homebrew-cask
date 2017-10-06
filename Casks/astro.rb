cask 'astro' do
  version :latest
  sha256 :no_check

  url 'http://download.helloastro.com/astro-mac.dmg'
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
