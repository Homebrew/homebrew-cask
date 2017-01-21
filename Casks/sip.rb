cask 'sip' do
  version '0.9.2'
  sha256 '1b8c2512f4adbafea1d5090c67c5f6857a0b12f5ee86404790b8bf0cafaed9be'

  url 'http://sipapp.io/download/sip.dmg'
  appcast 'http://sipapp.io/sparkle/sip.xml',
          checkpoint: 'fcef1ed7072e128c4dc3e472a8c385a34596c4d1c1c6600fb6d1f7cf6cf7285e'
  name 'Sip'
  homepage 'http://sipapp.io/'

  app 'Sip.app'
end
