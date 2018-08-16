cask 'keepingyouawake' do
  version '1.4.3'
  sha256 '572952bce48b7ddcbd2ca7acfb58084284de671e2322d2921ce031a24f653be0'

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"
  appcast 'https://github.com/newmarcel/KeepingYouAwake/releases.atom'
  name 'KeepingYouAwake'
  homepage 'https://github.com/newmarcel/KeepingYouAwake'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'KeepingYouAwake.app'

  uninstall login_item: 'KeepingYouAwake'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/info.marcel-dierkes.keepingyouawake.sfl*',
               '~/Library/Application Support/info.marcel-dierkes.KeepingYouAwake',
               '~/Library/Caches/info.marcel-dierkes.KeepingYouAwake',
               '~/Library/Preferences/info.marcel-dierkes.KeepingYouAwake.plist',
               '~/Library/Saved Application State/info.marcel-dierkes.KeepingYouAwake.savedState',
             ]
end
