cask 'skype' do
  version '8.60.0.76'
  sha256 '67ab7ae291bbd7a4a60bf8c2496b7faab69cd65836a7c1b2b174bbbefda18f3a'

  # endpoint920510.azureedge.net/s4l/s4l/download/mac/ was verified as official when first introduced to the cask
  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://go.skype.com/mac.download'
  name 'Skype'
  homepage 'https://www.skype.com/'

  auto_updates true

  app 'Skype.app'

  zap trash: [
               '~/Library/Address Book Plug-Ins/SkypeABCaller.bundle',
               '~/Library/Address Book Plug-Ins/SkypeABDialer.bundle',
               '~/Library/Address Book Plug-Ins/SkypeABSMS.bundle',
               '~/Library/Address Book Plug-Ins/SkypeABChatter.bundle',
               '~/Library/Application Scripts/com.skype.skype.shareagent',
               '~/Library/Application Support/Skype',
               '~/Library/Application Support/Skype Helper',
               '~/Library/Application Support/T/SkypeRT',
               '~/Library/Application Support/CrashReporter/Skype_*.plist',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.skype.skype.sfl*',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.skype.skype',
               '~/Library/Caches/com.skype.skype',
               '~/Library/Caches/com.skype.skype.ShipIt',
               '~/Library/Containers/com.skype.skype.shareagent',
               '~/Library/Cookies/com.skype.skype.binarycookies',
               '~/Library/Group Containers/*.com.skype.skype',
               '~/Library/Preferences/com.skype.skype.plist',
               '~/Library/Preferences/com.skype.skypewifi.plist',
               '~/Library/Preferences/ByHost/com.skype.skype.*.plist',
               '~/Library/Saved Application State/com.skype.skype.savedState',
               '~/Library/WebKit/com.skype.skype',
             ]
end
