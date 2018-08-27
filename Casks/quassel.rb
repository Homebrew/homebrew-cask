cask 'quassel' do
  version '0.12.5'
  sha256 'da76fae7ab612cdedf37e48b34fa68acf90385cdb20d5ec61f3c14bbac4a447e'

  url "https://quassel-irc.org/pub/QuasselMono_MacOSX-x86_64_#{version}.dmg"
  appcast 'https://github.com/quassel/quassel/releases.atom'
  name 'Quassel IRC'
  homepage 'https://quassel-irc.org/'

  app 'Quassel.app'
end
