cask 'losslesscut' do
  version '1.12.0'
  sha256 'd12923f643ab4243142a5086c742f9205d5b8b0b4a13f450ca63443389cf6e40'

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
