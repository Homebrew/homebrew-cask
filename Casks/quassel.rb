cask 'quassel' do
  version '0.12.2'
  sha256 '4dd932e5e7a0908886427fc012886a76bbf1691cdd8832a67cdbc11a10be3682'

  url "http://quassel-irc.org/pub/QuasselMono_MacOSX-x86_64_#{version}.dmg"
  name 'Quassel IRC'
  homepage 'http://quassel-irc.org'
  license :gpl

  app 'Quassel.app'
end
