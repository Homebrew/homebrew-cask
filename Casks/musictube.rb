cask 'musictube' do
  version '1.7'
  sha256 '1aff1cc06d27f38dec72bd23e731d7cf5559db592502dc86be69ba747adc33b4'

  url 'http://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'http://flavio.tordini.org/musictube-ws/appcast.xml',
          checkpoint: 'ab92e80f868ed53351e8c254f7d77aa6ec07e371126c139e4a99bca88ce6e031'
  name 'Musictube'
  homepage 'http://flavio.tordini.org/musictube'

  app 'Musictube.app'
end
