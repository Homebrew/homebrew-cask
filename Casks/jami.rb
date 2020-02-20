cask 'jami' do
  version '20200115.0451'
  sha256 '685f6fb4e91d299efb438aa60ca40a568a508d64a869a7d1c280aa5abfb2f8c0'

  url "https://dl.jami.net/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.jami.net/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://jami.net/'

  auto_updates true

  app 'Jami.app'
end
