cask 'jami' do
  version '20200318.0945'
  sha256 'f71f65c771d0efc2431f2f170f162551afb940599f05bdcfa38e59d58cb8d730'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
