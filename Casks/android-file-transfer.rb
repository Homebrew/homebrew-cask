cask 'android-file-transfer' do
  version :latest
  sha256 :no_check

  # google.com is the official download host per the vendor homepage
  url 'https://dl.google.com/dl/androidjumper/mtp/current/androidfiletransfer.dmg'
  name 'Android File Transfer'
  homepage 'https://www.android.com/filetransfer/'
  license :gratis

  app 'Android File Transfer.app'

  uninstall login_item: 'Android File'

  zap delete: [
                '~/Library/Application Support/Google/Android File Transfer',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.android.mtpviewer.sfl',
                '~/Library/Preferences/com.google.android.mtpviewer.plist',
              ],
      rmdir:  '~/Library/Application Support/Google/'
end
