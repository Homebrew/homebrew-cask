cask 'marp' do
  version '0.0.13'
  sha256 'b8c0e996de4a570d333a9a6789547d9ea45f1898d042ccbef25bc394b9b24bce'

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
