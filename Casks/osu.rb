cask 'osu' do
  version '20151017'
  sha256 '5677ee299ea9e271546e6ab56b9d3abe002d4295c9529a5b917f5af167dcd477'

  url "https://m1.ppy.sh/osu%21-#{version}.dmg"
  name 'osu!'
  homepage 'https://osu.ppy.sh'

  app 'osu!.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/osu!.wineskin.prefs.sfl'
end
