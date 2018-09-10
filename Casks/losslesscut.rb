cask 'losslesscut' do
  version '1.13.0'
  sha256 '353125e909af214433621b9c2b4f014547356f74bd8190cbc7a7d0cc7d06331f'

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
