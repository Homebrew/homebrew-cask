cask 'gridmount' do
  version '1.5'
  sha256 '6ea983fc8ddd83ad9b16503d0aefdb8edae36f7892d4a73414905a23ddd0fcc4'

  url "https://update.codingrange.com/gridmount/gridmount-#{version}.zip"
  name 'GridMount'
  homepage 'https://codingrange.com/gridmount'

  auto_updates true
  depends_on macos: '>= :yosemite'
  depends_on cask:  'osxfuse'

  app 'GridMount.app'

  uninstall quit: 'yaakov.GridMount'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/yaakov.gridmount.sfl2',
               '~/Library/Caches/yaakov.GridMount',
               '~/Library/Cookies/yaakov.GridMount.binarycookies',
               '~/Library/Preferences/yaakov.GridMount.plist',
             ]
end
