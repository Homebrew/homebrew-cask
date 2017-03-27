cask 'sip' do
  version '1.0'
  sha256 '74481560da01d33a3c3262da2797cd6490113cdca368a31e7e8c1c9dc8a4a66c'

  url 'http://sipapp.io/download/sip.dmg'
  appcast 'http://sipapp.io/sparkle/sip.xml',
          checkpoint: 'ff3700898f4eca49b688ff5edda4613c11cb9d02983825017664a05f95a78e69'
  name 'Sip'
  homepage 'http://sipapp.io/'

  depends_on macos: '>= :el_capitan'

  app 'Sip.app'
end
