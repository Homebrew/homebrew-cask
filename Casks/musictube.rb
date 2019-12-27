cask 'musictube' do
  version '1.11'
  sha256 'ff4a2db171b480f3feec212c5aef5eef831af62ae182bf091f465378a685872a'

  url 'https://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'https://flavio.tordini.org/musictube-ws/appcast.xml'
  name 'Musictube'
  homepage 'https://flavio.tordini.org/musictube'

  app 'Musictube.app'
end
