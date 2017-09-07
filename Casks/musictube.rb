cask 'musictube' do
  version '1.7.1'
  sha256 'bb36b058c585cc1c3fa9e46f8e6925ef9df6ab6d9d6284993e3cc74b97f48291'

  url 'http://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'http://flavio.tordini.org/musictube-ws/appcast.xml',
          checkpoint: '806dc502e2b1786674fedd215cbbb3391e0200f752aa46cd06e71dd2166047c3'
  name 'Musictube'
  homepage 'http://flavio.tordini.org/musictube'

  app 'Musictube.app'
end
