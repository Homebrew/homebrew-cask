cask 'jami' do
  version '20190814.1055'
  sha256 'bb9585bf8b5cc1587572724929f5875ec217d3828d3123275dc3bcc17523d160'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
