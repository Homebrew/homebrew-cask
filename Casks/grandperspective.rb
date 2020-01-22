cask 'grandperspective' do
  version '2.4.1'
  sha256 '554be5db3d2a771bfd9ba93addfac610ca6f91287c81b48c758e12e6a29ae588'

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
