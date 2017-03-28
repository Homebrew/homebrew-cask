cask 'skim' do
  version '1.4.28'
  sha256 'fc3b7213c22f5ddf899f3b120aa79e82640db483943558f7ab3f2ad3fc23e5c6'

  url "https://downloads.sourceforge.net/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast 'http://skim-app.sourceforge.net/skim.xml',
          checkpoint: 'dacac0f8ae3453e85eb2d67045c2f0dd518e6a9ee3dc90a018294391a3dbf91b'
  name 'Skim'
  homepage 'http://skim-app.sourceforge.net/'

  app 'Skim.app'
  binary "#{appdir}/Skim.app/Contents/SharedSupport/displayline"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimnotes"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimpdf"

  zap delete: '~/Library/Preferences/net.sourceforge.skim-app.skim.plist'
end
