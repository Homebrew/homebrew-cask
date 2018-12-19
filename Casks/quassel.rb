cask 'quassel' do
  version '0.13.0'
  sha256 'f4f36f51208503ecc6782649f60ce2f4f0bd81e0b3152aa0818785eb60c5eac5'

  url "https://quassel-irc.org/pub/QuasselMono_MacOSX-x86_64_#{version}.dmg"
  appcast 'https://github.com/quassel/quassel/releases.atom'
  name 'Quassel IRC'
  homepage 'https://quassel-irc.org/'

  app 'Quassel.app'
end
