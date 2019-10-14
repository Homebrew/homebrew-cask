cask 'mousepose' do
  version '4.0,10187'
  sha256 '3030c80001f73f8b1cdd466783dd6f99238f6c2fcbf935fd88448d1ea391ffa6'

  url "https://cdn.boinx.com/software/mousepose/Boinx_Mousepose_#{version.before_comma}-#{version.after_comma}.app.zip"
  appcast 'https://sparkle.boinx.com/appcast.lasso?appName=mousepose'
  name 'Mouseposé'
  homepage 'https://boinx.com/mousepose/overview/'

  depends_on macos: '>= :high_sierra'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/15708
  app 'Mousepose.app', target: "Mousepose\314\201.app"

  zap trash: [
               '~/Library/Application Support/com.boinx.Mousepose',
               '~/Library/Caches/com.boinx.Mousepose/',
               '~/Library/Cookies/com.boinx.Mousepose.binarycookies',
               '~/Library/Preferences/com.boinx.Mousepose.plist',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.boinx.mousepose.sfl*',
             ]
end
