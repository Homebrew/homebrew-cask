cask 'android-file-transfer' do
  version '1.0.12-1.0.507.1136'
  sha256 :no_check

  # google.com/dl/androidjumper was verified as official when first introduced to the cask
  url "https://dl.google.com/dl/androidjumper/mtp/#{version.sub(%r{.*-[0-9]*[.][0-9]*[.]}, '').delete('.')}/AndroidFileTransfer.dmg"
  name 'Android File Transfer'
  homepage 'https://www.android.com/filetransfer/'

  app 'Android File Transfer.app'

  uninstall login_item: 'Android File'

  zap trash: [
               '~/Library/Application Support/Google/Android File Transfer',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.android.mtpviewer.sfl*',
               '~/Library/Preferences/com.google.android.mtpviewer.plist',
             ],
      rmdir: '~/Library/Application Support/Google/'
end
