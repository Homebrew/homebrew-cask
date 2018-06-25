cask 'filepane' do
  version '1.10.4,1529228948'
  sha256 'cbf9c13a110cf209ea0aa77ee030f00770bd3b9ee9347dfe0b5ef1dbefb3ef4e'

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
