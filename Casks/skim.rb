cask 'skim' do
  version '1.4.38'
  sha256 '216b1264e601c3ab64a219e1728700ff702a29c91a1a49f6af80a415cbd0e8be'

  # downloads.sourceforge.net/skim-app was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/skim-app/Skim/Skim-#{version}/Skim-#{version}.dmg"
  appcast 'https://skim-app.sourceforge.io/skim.xml'
  name 'Skim'
  homepage 'https://skim-app.sourceforge.io/'

  app 'Skim.app'
  binary "#{appdir}/Skim.app/Contents/SharedSupport/displayline"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimnotes"
  binary "#{appdir}/Skim.app/Contents/SharedSupport/skimpdf"

  zap trash: '~/Library/Preferences/net.sourceforge.skim-app.skim.plist'
end
