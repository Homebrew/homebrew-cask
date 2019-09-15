cask 'latest' do
  version '0.6.1'
  sha256 '93c9d5c8b71850495380e5d8baa3e300ca572c07ee5ca1e176a938caa7bdcc7f'

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
