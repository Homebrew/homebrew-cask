cask 'qr-journal' do
  version '1.5'
  sha256 '19aaa82efc8ef52e529b83aa33ed69c6a6f0d966833fdd1f3915cc70abf02e8c'

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
