cask 'filepane' do
  version '1.10.6,1573342847'
  sha256 'bfb5c593bd1a859ce5217c594f91274ace03893385d5272b805313f4db27d59d'

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
