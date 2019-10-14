cask 'filepane' do
  version '1.10.5,1570653522'
  sha256 '2b8d75610f10bed81857b6503e61bbfb2246368abe2a20788de242a28acb74e7'

  # dl.devmate.com/com.mymixapps.FilePane was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mymixapps.FilePane/#{version.before_comma}/#{version.after_comma}/FilePane-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.mymixapps.FilePane.xml'
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
