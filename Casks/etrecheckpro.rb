cask 'etrecheckpro' do
  version :latest
  sha256 :no_check

  url 'https://etrecheck.com/download/EtreCheck.zip'
  name 'EtreCheck'
  homepage 'https://etrecheck.com/'

  app 'EtreCheckPro.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.etresoft.etrecheck*.sfl*',
               '~/Library/Caches/com.etresoft.EtreCheck*',
               '~/Library/Preferences/com.etresoft.EtreCheck*.plist',
               '~/Library/WebKit/com.etresoft.EtreCheck*',
             ]
end
