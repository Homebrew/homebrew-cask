cask 'losslesscut' do
  version '2.0.0'
  sha256 'b4f6a71fce24ed448ddc3b4797a2b387da24304b9ca0f52a716fe29dd295372e'

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
