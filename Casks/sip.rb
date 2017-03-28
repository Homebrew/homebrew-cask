cask 'sip' do
  version '1.0'
  sha256 '4315284ec5e409d4eb32a815488b5a6ec5d4b875dacf72d96a52aa6bbeb40c59'

  url 'http://sipapp.io/download/sip.dmg'
  appcast 'http://sipapp.io/sparkle/sip.xml',
          checkpoint: 'ff3700898f4eca49b688ff5edda4613c11cb9d02983825017664a05f95a78e69'
  name 'Sip'
  homepage 'http://sipapp.io/'

  depends_on macos: '>= :el_capitan'

  app 'Sip.app'
end
