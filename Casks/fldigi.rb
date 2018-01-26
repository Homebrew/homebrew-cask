cask 'fldigi' do
  version '4.0.15'
  sha256 '93158b435727876067e926f8706eb182fc672168dc530062d67fac65f0fb2c0f'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: 'a117fb088fd46537e3d9d02d69776a01fe182b71811a72212390fda0c2227c8b'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
