cask 'skim' do
  version '1.4.23'
  sha256 '2ce05367ab872c824e9b230bcd467ea12036630b208fac067f4ccaa72f02d935'

  url "https://downloads.sourceforge.net/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast 'http://skim-app.sourceforge.net/skim.xml',
          checkpoint: '4ca16b706108ad36df7a2c0a5435128cd235370f29518ca8f35b76b58918c393'
  name 'Skim'
  homepage 'http://skim-app.sourceforge.net/'

  app 'Skim.app'
  binary "#{appdir}/Skim.app/Contents/SharedSupport/displayline"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimnotes"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimpdf"

  zap delete: '~/Library/Preferences/net.sourceforge.skim-app.skim.plist'
end
