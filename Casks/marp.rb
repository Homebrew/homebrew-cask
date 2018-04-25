cask 'marp' do
  version '0.0.12'
  sha256 '6372ff9b102ed281509733c27eafa757c4d8fd3dd52ac16853d970235a82f09f'

  # github.com/yhatt/marp was verified as official when first introduced to the cask
  url "https://github.com/yhatt/marp/releases/download/v#{version}/#{version}-Marp-darwin-x64.dmg"
  appcast 'https://github.com/yhatt/marp/releases.atom',
          checkpoint: '784caa17c9ed9c7aed6fdb22d7e266ebf6f6e6c21e8906c3f0d8918c9cc30fbf'
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
