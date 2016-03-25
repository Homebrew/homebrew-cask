cask 'mousepose' do
  version '3.2.7'
  sha256 '05a3c5175206e971b386a75cd28e51873fdff6c47e24c5673a8116af127d336c'

  url "https://cdn.boinx.com/software/mousepose/Boinx_Mousepose_#{version}-10878.app.zip"
  name 'Mouseposé'
  homepage 'https://www.boinx.com/mousepose/'
  license :gratis

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/15708
  app 'Mousepose.app', target: "Mousepose\314\201.app"

  zap delete: [
                '~/Library/Application Support/com.boinx.Mousepose',
                '~/Library/Caches/com.boinx.Mousepose/',
                '~/Library/Cookies/com.boinx.Mousepose.binarycookies',
                '~/Library/Preferences/com.boinx.Mousepose.plist',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.boinx.mousepose.sfl',
              ]
end
