cask "supertab" do
  version "1.2.2"
  sha256 :no_check

  url "https://macplus-software.com/downloads/SuperTab%207.zip"
  name "SuperTab"
  desc "Switcher panel for apps, windows, clipboard history and files"
  homepage "https://noteifyapp.com/supertab/"

  livecheck do
    url "https://macplus-software.com/downloads/SuperTab%207.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "SuperTab 7.app"

  zap trash: [
    "~/Library/Application Scripts/com.macplus-software.com.SuperTab-7",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macplus-software.com.supertab-7.sfl*",
    "~/Library/Application Support/CrashReporter/SuperTab 7_*.plist",
    "~/Library/Application Support/SuperTab 7",
    "~/Library/Caches/com.macplus-software.com.SuperTab-7",
    "~/Library/HTTPStorages/com.macplus-software.com.SuperTab-7*",
    "~/Library/Preferences/com.macplus-software.com.SuperTab-7.plist",
    "~/Library/Saved Application State/com.macplus-software.com.SuperTab-7.savedState",
    "~/Library/WebKit/com.macplus-software.com.SuperTab-7",
  ]
end
