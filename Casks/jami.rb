cask 'jami' do
  version '20190819.1040'
  sha256 '25ebe901213acb5577906c20d6682bf6c1a4bdb7610ddbd39ea35e2eb0dd6076'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
