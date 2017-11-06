cask 'etrecheck' do
  version :latest
  sha256 :no_check

  url 'https://etrecheck.com/download/EtreCheck.zip'
  name 'EtreCheck'
  homepage 'https://etrecheck.com/'

  app 'EtreCheck.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.etresoft.etrecheck.sfl',
                '~/Library/Caches/com.etresoft.EtreCheck',
              ],
      trash:  '~/Library//Preferences/com.etresoft.EtreCheck.plist'
end
