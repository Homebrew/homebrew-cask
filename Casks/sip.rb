cask 'sip' do
  version '0.9.4'
  sha256 '32754b3a255377a67b72387425d59f9b2ea2094cc4c157a3b98e91da7a5cd018'

  url 'http://sipapp.io/download/sip.dmg'
  appcast 'http://sipapp.io/sparkle/sip.xml',
          checkpoint: '88734a57e970eaf72c5cfb7427cdba41f682e044668f7f4173144847496b26bd'
  name 'Sip'
  homepage 'http://sipapp.io/'

  app 'Sip.app'
end
