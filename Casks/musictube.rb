cask 'musictube' do
  version '1.11.1'
  sha256 'b2a7501cb07ef2d78a83dd5e1b8bbd8194e8db464b35a9b1a77b2aed5eb08948'

  url 'https://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'https://flavio.tordini.org/musictube-ws/appcast.xml'
  name 'Musictube'
  homepage 'https://flavio.tordini.org/musictube'

  app 'Musictube.app'
end
