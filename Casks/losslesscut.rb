cask 'losslesscut' do
  version '1.10.0'
  sha256 'b6ed8776c1bc0bf1172c39e1d76dab65b5d5a2acbd9249aeb043b4bd98954d56'

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-darwin-x64.zip"
  appcast 'https://github.com/mifi/lossless-cut/releases.atom',
          checkpoint: 'aaa022ad5a986476e3a182bf7d732b378fe48454d64953bc6918fa4bdd24be07'
  name 'Loslesscut'
  homepage 'https://github.com/mifi/lossless-cut'

  app 'LosslessCut-darwin-x64/LosslessCut.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.losslesscut.sfl*',
               '~/Library/Preferences/com.electron.losslesscut.helper.plist',
               '~/Library/Preferences/com.electron.losslesscut.plist',
             ]
end
