cask 'jami' do
  version '20200408.1149'
  sha256 '7464edac2c254b6a887655c158b5bf84c1dd13109e84ec0ef9cca892a17c7ca2'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
