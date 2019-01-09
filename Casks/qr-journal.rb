cask 'qr-journal' do
  version '1.7.1'
  sha256 'a6b83e99dceddaf5f8183abbcaa56fe93755f74f21457eea878cd3e68ac9144e'

  url "https://www.joshjacob.com/mac-development/QRJournal#{version}.dmg"
  name 'QR Journal'
  homepage 'https://www.joshjacob.com/mac-development/qrjournal.php'

  app 'QR Journal.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.joshjacob.qrjournal.sfl*',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.joshjacob.qrjournal.help*',
               '~/Library/Containers/com.joshjacob.qrjournal',
             ]
end
