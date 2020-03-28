cask 'jami' do
  version '20200327.1445'
  sha256 '4c1ee72401e1579fad16896a7081676529fd6f6fc363b0940307ef3d528d74a7'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
