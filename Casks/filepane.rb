cask 'filepane' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.mymixapps.FilePane was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.mymixapps.FilePane/FilePane.dmg'
  name 'FilePane'
  homepage 'https://mymixapps.com/filepane'

  app 'FilePane.app'

  zap trash: [
               '~/Library/Application Support/FilePane',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mymixapps.filepane.sfl*',
               '~/Library/Caches/com.mymixapps.FilePane',
               '~/Library/Preferences/com.mymixapps.FilePane.plist',
               '~/Users/Shared/FilePane/',
             ]
end
