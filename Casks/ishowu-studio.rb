cask 'ishowu-studio' do
  version '1.7.6'
  sha256 '80384f3a4f072ba72cf0c73d12bfd40c1a36f37c46fcc20b56ccec3cbbe98035'

  url "https://www.shinywhitebox.com/downloads/iShowU_Studio_#{version}.dmg"
  appcast 'https://www.shinywhitebox.com/store/appcast.php?p=12'
  name 'iShowU Studio'
  homepage 'https://www.shinywhitebox.com/ishowu-studio'

  app 'iShowU Studio.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.shinywhitebox.ishowu-studio.sfl*'
end
