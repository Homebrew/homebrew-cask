cask 'filepane' do
  version '1.10.4,1532767525'
  sha256 'ba910ad4340027725a1a94aec40bf6fea0ba3cbbd03a3a1e1e2de052b790d4fe'

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
