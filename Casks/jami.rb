cask 'jami' do
  version '20200325.2114'
  sha256 'c7c8c83495dcb1ec93a39e94e13217133f7a76175bcdd605bf5502ac993a206f'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
