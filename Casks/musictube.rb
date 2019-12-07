cask 'musictube' do
  version '1.9'
  sha256 '6f43a8007d2d9f172c18ce96545fce788b7f92074fb4b61fcf0a56559181a4b3'

  url 'https://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'https://flavio.tordini.org/musictube-ws/appcast.xml'
  name 'Musictube'
  homepage 'https://flavio.tordini.org/musictube'

  app 'Musictube.app'
end
