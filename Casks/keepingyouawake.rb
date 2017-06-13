cask 'keepingyouawake' do
  version '1.4.1'
  sha256 '7d9ba8606a39b0fc033f00233d020fce6ecc77560a4c679a6c377a235a7377a8'

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"
  appcast 'https://github.com/newmarcel/KeepingYouAwake/releases.atom',
          checkpoint: 'e24e306e46af4330c38e5bdfed9b174c3682716dd23054e2fe0390e3b278de75'
  name 'KeepingYouAwake'
  homepage 'https://github.com/newmarcel/KeepingYouAwake'

  auto_updates true

  app 'KeepingYouAwake.app'

  uninstall login_item: 'KeepingYouAwake'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/info.marcel-dierkes.keepingyouawake.sfl',
                '~/Library/Application Support/info.marcel-dierkes.KeepingYouAwake',
                '~/Library/Caches/info.marcel-dierkes.KeepingYouAwake',
                '~/Library/Preferences/info.marcel-dierkes.KeepingYouAwake.plist',
                '~/Library/Saved Application State/info.marcel-dierkes.KeepingYouAwake.savedState',
              ]
end
