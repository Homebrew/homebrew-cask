cask 'jami' do
  version '20200713.1031'
  sha256 '7744a1366341f3c4c678fff86376c6101a99eba61d3fda4df387b261f1982fe3'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          must_contain: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
