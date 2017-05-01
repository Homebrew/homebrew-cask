cask 'skim' do
  version '1.4.29'
  sha256 '64c00d39a0f39ab5cc616bdf3b45e63c39d0d0becdbadd4ee6edd9263766e051'

  url "https://downloads.sourceforge.net/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast 'http://skim-app.sourceforge.net/skim.xml',
          checkpoint: 'dd1fa456a150412c700ff53613dd55884b3a99d24153a78a383aa16b02a65133'
  name 'Skim'
  homepage 'http://skim-app.sourceforge.net/'

  app 'Skim.app'
  binary "#{appdir}/Skim.app/Contents/SharedSupport/displayline"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimnotes"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimpdf"

  zap delete: '~/Library/Preferences/net.sourceforge.skim-app.skim.plist'
end
