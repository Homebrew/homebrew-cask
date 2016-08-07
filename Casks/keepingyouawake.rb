cask 'keepingyouawake' do
  version '1.4.0'
  sha256 '98eb5025525548be6eaf1da4bfc374dbe73dc2fcd17610e6703f849eba3b986b'

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"
  appcast 'https://github.com/newmarcel/KeepingYouAwake/releases.atom',
          checkpoint: 'ba4df62788e318184eb2c3d4c185243315ce52a16d559191dbf31fcbf27e1842'
  name 'KeepingYouAwake'
  homepage 'https://github.com/newmarcel/KeepingYouAwake'
  license :mit

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
