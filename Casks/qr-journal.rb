cask 'qr-journal' do
  version '1.6'
  sha256 'f263d0fab5a6ca5dee751cb249d5d2c1472285e10d08bc66c125841c0f603948'

  url "http://www.joshjacob.com/mac-development/QRJournal#{version}.dmg"
  name 'QR Journal'
  homepage 'http://www.joshjacob.com/mac-development/qrjournal.php'

  app 'QR Journal.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.joshjacob.qrjournal.sfl*',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.joshjacob.qrjournal.help*',
               '~/Library/Containers/com.joshjacob.qrjournal',
             ]
end
