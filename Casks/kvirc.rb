cask 'kvirc' do
  version '4.2.0'
  sha256 'bb450b5abc2012cfc6c3f2cce3c8b13239acad4553cdd73d48f8d47dd8cf61c2'

  url "ftp://ftp.kvirc.de/pub/kvirc/#{version}/binary/osx/KVIrc-#{version}-Equilibrium.dmg"
  name 'KVIrc'
  homepage 'http://www.kvirc.de/'

  app 'KVIrc.app'

  zap trash: [
               '~/Library/Preferences/com.kvirc.kvirc.plist',
               '~/Library/Saved Application State/com.kvirc.kvirc.savedState',
               '~/.kvirc*.rc',
             ]
end
