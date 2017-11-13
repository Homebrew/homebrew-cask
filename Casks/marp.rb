cask 'marp' do
  version '0.0.11'
  sha256 '07d0663e71adb90d2d9b8a992a62dc5fe0cdf0f4d47b1c2433718582cc0ef722'

  # github.com/yhatt/marp was verified as official when first introduced to the cask
  url "https://github.com/yhatt/marp/releases/download/v#{version}/#{version}-Marp-darwin-x64.dmg"
  appcast 'https://github.com/yhatt/marp/releases.atom',
          checkpoint: '6969d13883018b8647cbd947b1d93890482af371576413f79deeaf9c310c1035'
  name 'Marp'
  homepage 'https://yhatt.github.io/marp/'

  app 'Marp.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.yhatt.marp.sfl*',
                '~/Library/Caches/jp.yhatt.marp',
                '~/Library/Saved Application State/jp.yhatt.marp.savedState',
                '~/Library/WebKit/jp.yhatt.marp',
              ],
      trash:  [
                '~/Library/Application Support/Marp',
                '~/Library/Preferences/jp.yhatt.marp.helper.plist',
                '~/Library/Preferences/jp.yhatt.marp.plist',
              ]
end
