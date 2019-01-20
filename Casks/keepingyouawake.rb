cask 'keepingyouawake' do
  version '1.5.0'
  sha256 '214e2d9a7d177abd1e3e7fddb6c02842c2ec21fc6a4da756152989b4c22c3aba'

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
