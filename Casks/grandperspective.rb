cask 'grandperspective' do
  version '2.4.2'
  sha256 'fb43b3a25ff14d75d5b0cffa8dd84fcfbb3787c368e4ee1f87870edd4035be25'

  # downloads.sourceforge.net/grandperspectiv was verified as official when first introduced to the cask
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
