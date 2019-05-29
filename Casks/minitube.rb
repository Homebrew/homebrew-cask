cask 'minitube' do
  version '3.0'
  sha256 '46ae6f29c346c9dca5d90c5c2748328b23f04dba8941be29bc8ee17e118679b0'

  url 'https://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'https://flavio.tordini.org/minitube-ws/appcast.xml'
  name 'Minitube'
  homepage 'https://flavio.tordini.org/minitube'

  app 'Minitube.app'
end
