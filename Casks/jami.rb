cask 'jami' do
  version '20200616.1957'
  sha256 'a23dc102a6eadebef563780f3abdadeb9c7a0b645036484f35b4af5dc500e41a'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          must_contain: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
