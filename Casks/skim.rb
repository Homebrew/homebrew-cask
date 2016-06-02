cask 'skim' do
  version '1.4.19'
  sha256 '087638b56b4c112b52da57ea108b015ece6a8fa07ee2b0778c00c429605c9cdf'

  url "http://downloads.sourceforge.net/project/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast 'http://skim-app.sourceforge.net/skim.xml',
          checkpoint: 'b6c39f7d48facc787c8d996706344c2448ed35dcf56fbcf49dde641206c5cff7'
  name 'Skim'
  homepage 'http://skim-app.sourceforge.net/'
  license :bsd

  app 'Skim.app'
  binary "#{appdir}/Skim.app/Contents/SharedSupport/displayline"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimnotes"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimpdf"

  zap delete: '~/Library/Preferences/net.sourceforge.skim-app.skim.plist'
end
