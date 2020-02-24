cask 'keepingyouawake' do
  version '1.5.1'
  sha256 '9a025bb4429845a51e20bb88376f4c0e25209f7c7298f9f5f8e7306da6502021'

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"
  appcast 'https://github.com/newmarcel/KeepingYouAwake/releases.atom'
  name 'KeepingYouAwake'
  homepage 'https://github.com/newmarcel/KeepingYouAwake'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'KeepingYouAwake.app'

  zap trash: [
               '~/Library/Application Scripts/info.marcel-dierkes.KeepingYouAwake',
               '~/Library/Application Scripts/info.marcel-dierkes.KeepingYouAwake.Launcher',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/info.marcel-dierkes.keepingyouawake.sfl*',
               '~/Library/Application Support/info.marcel-dierkes.KeepingYouAwake',
               '~/Library/Caches/info.marcel-dierkes.KeepingYouAwake',
               '~/Library/Containers/info.marcel-dierkes.KeepingYouAwake',
               '~/Library/Containers/info.marcel-dierkes.KeepingYouAwake.Launcher',
               '~/Library/Preferences/info.marcel-dierkes.KeepingYouAwake.plist',
               '~/Library/Saved Application State/info.marcel-dierkes.KeepingYouAwake.savedState',
             ]
end
