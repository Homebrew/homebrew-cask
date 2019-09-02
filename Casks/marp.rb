cask 'marp' do
  version '0.0.14'
  sha256 '3ef77ac8e8c9ed3afac9dbc069e55a958a431dc3c2bc26ac15188f977497e266'

  # github.com/yhatt/marp was verified as official when first introduced to the cask
  url "https://github.com/yhatt/marp/releases/download/v#{version}/#{version}-Marp-darwin-x64.dmg"
  appcast 'https://github.com/yhatt/marp/releases.atom'
  name 'Marp'
  homepage 'https://yhatt.github.io/marp/'

  app 'Marp.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.yhatt.marp.sfl*',
               '~/Library/Application Support/Marp',
               '~/Library/Caches/jp.yhatt.marp',
               '~/Library/Preferences/jp.yhatt.marp.helper.plist',
               '~/Library/Preferences/jp.yhatt.marp.plist',
               '~/Library/Saved Application State/jp.yhatt.marp.savedState',
               '~/Library/WebKit/jp.yhatt.marp',
             ]
end
