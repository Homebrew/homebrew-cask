cask 'intelliscape-caffeine' do
  version '1.1.2'
  sha256 '365367f8b3314ffabc1d821f996943755ebc4f90f5ca1433f3123ddb62e1835e'

  # cl.ly/2d0e01d909e4 was verified as official when first introduced to the cask
  url 'https://cl.ly/2d0e01d909e4/download/Caffeine.dmg'
  appcast 'https://intelliscapesolutions.com/apps/caffeine/releasenotes'
  name 'Caffeine'
  homepage 'https://intelliscapesolutions.com/apps/caffeine'

  conflicts_with cask: 'caffeine'

  app 'Caffeine.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lightheadsw.caffeine.sfl*',
               '~/Library/Preferences/com.lightheadsw.Caffeine.plist',
             ]
end
