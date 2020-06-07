cask 'musictube' do
  version '1.12.0'
  sha256 '62cf21286c40c8bcb14c3db4bd817fbc9992def2bf78d04a331730a4bae38149'

  url 'https://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'https://flavio.tordini.org/musictube-ws/appcast.xml'
  name 'Musictube'
  homepage 'https://flavio.tordini.org/musictube'

  app 'Musictube.app'
end
