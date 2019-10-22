cask 'minitube' do
  version '3.2'
  sha256 '5493c4ba52f3aa5a12a406de318012c61dd37cfb9eea1ae6ab05b4ad18283b35'

  url 'https://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'https://flavio.tordini.org/minitube-ws/appcast.xml'
  name 'Minitube'
  homepage 'https://flavio.tordini.org/minitube'

  depends_on macos: '>= :sierra'

  app 'Minitube.app'
end
