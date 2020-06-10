cask 'grandperspective' do
  version '2.4.3'
  sha256 '9af9e3d1f96f5267dc865696d6015b9076858335e133beac4e649bbce6803a18'

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
