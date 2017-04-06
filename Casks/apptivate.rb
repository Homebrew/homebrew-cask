cask 'apptivate' do
  version '2.2'
  sha256 '8391b37f818c492085cb2b702799b6f98e615adaf8d726a10a9fd56890d6c306'

  url 'http://www.apptivateapp.com/resources/Apptivate.app.zip'
  name 'Apptivate'
  homepage 'http://www.apptivateapp.com/'

  app 'Apptivate.app'

  zap delete: [
                '~/Library/Application Support/Apptivate',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/se.cocoabeans.apptivate.sfl',
                '~/Library/Preferences/se.cocoabeans.apptivate.plist',
              ]
end
