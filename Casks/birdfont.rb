cask 'birdfont' do
  version '2.17.1'
  sha256 '0ab45503b9a46441d72d9416297dcf337ff6c7ac6d00f107e52fabd625ba3af5'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  appcast 'https://github.com/johanmattssonm/birdfont/releases.atom',
          checkpoint: '1983550b155b04fce6430fac7dc4a6a4b5d2510baed039477061822e555bf06a'
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  app 'BirdFontNonCommercial.app'
end
