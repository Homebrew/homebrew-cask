cask 'minitube' do
  version '2.9'
  sha256 'b1e2db72731974f4314461eac245d67e6a8a7991ff5a54e310b59fab74ce3ff2'

  url 'https://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'https://flavio.tordini.org/minitube-ws/appcast.xml'
  name 'Minitube'
  homepage 'https://flavio.tordini.org/minitube'

  app 'Minitube.app'
end
