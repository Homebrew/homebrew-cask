cask 'ishowu-studio' do
  version :latest
  sha256 :no_check

  url 'https://www.shinywhitebox.com/store/file.php?p=12'
  name 'iShowU Studio'
  homepage 'https://www.shinywhitebox.com/ishowu-studio'

  app 'iShowU Studio.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.shinywhitebox.ishowu-studio.sfl*'
end
