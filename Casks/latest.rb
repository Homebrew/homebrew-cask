cask 'latest' do
  version '0.5'
  sha256 'd7d53e75db5aff57378a83c5ee5a4eb05c6df1a5d1cbf810eb2c92a748d92255'

  url 'https://max.codes/latest/Latest.zip'
  appcast 'https://max.codes/latest/feed.xml'
  name 'Latest'
  homepage 'https://max.codes/latest'

  depends_on macos: '>= :sierra'

  app 'Latest.app'

  zap trash: [
               '~/Library/Caches/com.max-langer.Latest',
               '~/Library/Preferences/com.max-langer.Latest.plist',
               '~/Library/Saved Application State/com.max-langer.Latest.savedState',
             ]
end
