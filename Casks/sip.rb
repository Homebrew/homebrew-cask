cask 'sip' do
  version '0.9.9'
  sha256 '43079e67a08960f7efac31ea344b978bd9d1db4ce51dbfb13c2f6fdfb51ce9da'

  url 'http://sipapp.io/download/sip.dmg'
  appcast 'http://sipapp.io/sparkle/sip.xml',
          checkpoint: 'a342e2fb0490270c238bb8099a9d8c796c1772c7d5d8fc72365dbe8a819cfde2'
  name 'Sip'
  homepage 'http://sipapp.io/'

  depends_on macos: '>= :el_capitan'

  app 'Sip.app'
end
