cask 'latest' do
  version '0.6.2'
  sha256 '0fcca3f8eaf8519b611d8c7909d93fc89cc880a34aa00afc72675ef87286a4e8'

  url 'https://max.codes/latest/Latest.zip'
  appcast 'https://max.codes/latest/update.xml'
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
