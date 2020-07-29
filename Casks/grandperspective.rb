cask 'grandperspective' do
  version '2.5.0'
  sha256 '56c523e3e97c0456e88c2e52f82f863f00f27b3344eefaf402624c9f0ab88625'

  # downloads.sourceforge.net/grandperspectiv/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  appcast 'https://sourceforge.net/projects/grandperspectiv/rss?path=/grandperspective'
  name 'GrandPerspective'
  homepage 'https://grandperspectiv.sourceforge.io/'

  app 'GrandPerspective.app'

  zap trash: [
               '~/Library/Application Scripts/net.courceforge.grandperspectiv',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.sourceforge.grandperspectiv.sfl2',
               '~/Library/Containers/net.sourceforge.grandperspectiv',
               '~/Library/Preferences/net.sourceforge.grandperspectiv.plist',
             ]
end
