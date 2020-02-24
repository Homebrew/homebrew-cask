cask 'jettison' do
  version '1.7.5'
  sha256 '2008e23aaa87ef38b85fac5b16a703a0cbb212a0ef522ed311bd575768e4834e'

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
