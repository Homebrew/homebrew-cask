cask 'jami' do
  version '20200315.1222'
  sha256 '12302f93751790ebb00e461893ed7ece0c2d09d47aabdbb247b1101230ee895d'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
