cask 'musictube' do
  version :latest
  sha256 :no_check

  url 'http://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'http://flavio.tordini.org/musictube-ws/appcast.xml',
          :sha256 => 'ca9cf394ad6e2b9dd618194c63c069c5f36bd8dec1c9445f6f8b804437a0c61c'
  name 'Musictube'
  homepage 'http://flavio.tordini.org/musictube'
  license :commercial

  app 'Musictube.app'
end
