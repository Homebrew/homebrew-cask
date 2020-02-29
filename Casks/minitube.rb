cask 'minitube' do
  version '3.3.1'
  sha256 'f20e4dc32bdbc88cee01fe215b1b024e75475e7bed47e7ca01d95b468d0b14fc'

  url 'https://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'https://flavio.tordini.org/minitube-ws/appcast.xml'
  name 'Minitube'
  homepage 'https://flavio.tordini.org/minitube'

  depends_on macos: '>= :sierra'

  app 'Minitube.app'
end
