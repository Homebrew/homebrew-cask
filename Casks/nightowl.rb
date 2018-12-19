cask 'nightowl' do
  version '0.2.8'
  sha256 'b3e0985ad54cf77ec1037e5cbad062d8aa95e00ee66a96342c58e2309e9b796c'

  url 'https://nightowl.kramser.xyz/files/NightOwl.dmg'
  appcast 'https://nightowl.kramser.xyz/'
  name 'NightOwl'
  homepage 'https://nightowl.kramser.xyz/'

  depends_on macos: '>= :mojave'

  app 'NightOwl.app'
end
