cask 'minitube' do
  version '2.9'
  sha256 'b1e2db72731974f4314461eac245d67e6a8a7991ff5a54e310b59fab74ce3ff2'

  url 'https://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'https://flavio.tordini.org/minitube-ws/appcast.xml',
          checkpoint: 'dbba6cb37544ab549f5dc7103c5aabc07a70ec4571a3b0b6815140795093b1a3'
  name 'Minitube'
  homepage 'https://flavio.tordini.org/minitube'

  app 'Minitube.app'
end
