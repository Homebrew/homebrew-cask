cask 'quassel' do
  version '0.12.3'
  sha256 'e607fc3f838178dcf72d78d7631940d70cf4022868b6b630079b83e75f8758de'

  url "http://quassel-irc.org/pub/QuasselMono_MacOSX-x86_64_#{version}.dmg"
  name 'Quassel IRC'
  homepage 'http://quassel-irc.org'
  license :gpl

  app 'Quassel.app'
end
