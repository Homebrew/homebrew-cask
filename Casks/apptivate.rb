cask 'apptivate' do
  version :latest
  sha256 :no_check

  url 'http://www.apptivateapp.com/resources/Apptivate.app.zip'
  name 'Apptivate'
  homepage 'http://www.apptivateapp.com'
  license :gratis

  app 'Apptivate.app'

  zap delete: [
                '~/Library/Application Support/Apptivate',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/se.cocoabeans.apptivate.sfl',
                '~/Library/Preferences/se.cocoabeans.apptivate.plist',
              ]
end
