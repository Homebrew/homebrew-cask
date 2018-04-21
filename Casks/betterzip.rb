cask 'betterzip' do
  version '4.1.2'
  sha256 '57a0579610d79e4375a0f2afb59d0cc6abccdc200ad44c6907e4035bf147ca9a'

  url "https://macitbetter.com/dl/BetterZip-#{version}.zip"
  appcast "https://macitbetter.com/BetterZip#{version.major}.rss",
          checkpoint: '244c1438608b464bc1889e282e1bc4042efde2ca8a99cf5fb8ae926c2a2d3314'
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
