cask 'losslesscut' do
  version '2.1.0'
  sha256 '3d8bb0f24b84053066c7e2c36e76926808e163933a0453746f7345bc3f96b653'

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-darwin-x64.zip"
  appcast 'https://github.com/mifi/lossless-cut/releases.atom'
  name 'Loslesscut'
  homepage 'https://github.com/mifi/lossless-cut'

  app 'LosslessCut-darwin-x64/LosslessCut.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.losslesscut.sfl*',
               '~/Library/Preferences/com.electron.losslesscut.helper.plist',
               '~/Library/Preferences/com.electron.losslesscut.plist',
             ]
end
