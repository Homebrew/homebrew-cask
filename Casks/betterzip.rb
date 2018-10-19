cask 'betterzip' do
  version '4.2.1'
  sha256 '37a98f2d5d66597470ad680f7b69ed10a1b32ed2512c8474924ef344e6c238f0'

  url "https://macitbetter.com/dl/BetterZip-#{version}.zip"
  appcast 'https://macitbetter.com/BetterZip.rss'
  name 'BetterZip'
  homepage 'https://macitbetter.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

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
