cask 'betterzip' do
  version '4.1.3b'
  sha256 'afa17b435a269b750e6ef4f109b9de995e807cf47658c910c5fe4c80034b3961'

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
