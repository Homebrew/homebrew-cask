cask 'latest' do
  version '0.4.5'
  sha256 'be339097f606008d9a6c5e33ca356caffc6056ac63508909ef95a08ecd7fc51e'

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
