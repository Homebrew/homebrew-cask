cask 'jettison' do
  version '1.7.4'
  sha256 '8a0e1790442b6b762fd44c07f7c23a9262488bae7f3abb5d158b45987e8db808'

  url "https://stclairsoft.com/download/Jettison-#{version}.dmg"
  appcast 'https://stclairsoft.com/cgi-bin/sparkle.cgi?JT'
  name 'Jettison'
  name 'St. Clair Software Jettison'
  homepage 'https://stclairsoft.com/Jettison/'

  auto_updates true

  app 'Jettison.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stclairsoft.jettison.sfl*',
               '~/Library/Application Support/Jettison',
               '~/Library/Preferences/com.stclairsoft.Jettison.plist',
               '~/Library/Preferences/com.stclairsoft.Jettison.AppStore.plist',
               '~/Library/Caches/com.stclairsoft.Jettison',
             ]
end
