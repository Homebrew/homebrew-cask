cask 'musictube' do
  version '1.5.3'
  sha256 '18c9c7169e9240cf8abfbb348199812cabcf6edecfd7dc1b1f4b1410ed3c4c41'

  url 'http://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'http://flavio.tordini.org/musictube-ws/appcast.xml',
          checkpoint: 'ca9cf394ad6e2b9dd618194c63c069c5f36bd8dec1c9445f6f8b804437a0c61c'
  name 'Musictube'
  homepage 'http://flavio.tordini.org/musictube'
  license :commercial

  app 'Musictube.app'
end
