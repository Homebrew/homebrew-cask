cask 'jami' do
  version '20200402.0924'
  sha256 '1fcdf401541e7afe056f64d23d947be14a1479e4eb721fe03971051e1a0096c3'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
