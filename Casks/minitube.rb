cask 'minitube' do
  version '3.4.2'
  sha256 'dc6f7d3d40000292c51fa14d2dae2536c7f31d9e54d42cda18ed4a1fd2531207'

  url 'https://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'https://flavio.tordini.org/minitube-ws/appcast.xml'
  name 'Minitube'
  homepage 'https://flavio.tordini.org/minitube'

  depends_on macos: '>= :sierra'

  app 'Minitube.app'
end
