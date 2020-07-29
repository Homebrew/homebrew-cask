cask 'betterzip' do
  version '5.0.1'
  sha256 'abd419fb0580d36cde04f6b6c1388a47fd4ca5da40f84b75b772eada03bd1431'

  # macitbetter.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://macitbetter.s3.amazonaws.com/BetterZip-#{version}.zip"
  appcast "https://macitbetter.com/BetterZip#{version.major}.rss"
  name 'BetterZip'
  homepage 'https://macitbetter.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'BetterZip.app'

  zap trash: [
               '~/Library/Application Scripts/com.macitbetter.betterzip.findersyncextension',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macitbetter.betterzip.sfl*',
               '~/Library/Application Support/com.macitbetter.betterzip',
               '~/Library/Caches/com.apple.helpd/Generated/com.macitbetter.betterzip.help*',
               '~/Library/Caches/com.macitbetter.betterzip',
               '~/Library/Containers/com.macitbetter.betterzip.findersyncextension',
               '~/Library/Group Containers/79RR9LPM2N.group.com.macitbetter.betterzip',
               '~/Library/Group Containers/79RR9LPM2N.group.com.macitbetter.betterzip-setapp',
               '~/Library/Preferences/com.macitbetter.betterzip.plist',
               '~/Library/Saved Application State/com.macitbetter.betterzip.savedState',
             ]
end
