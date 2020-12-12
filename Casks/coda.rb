cask "coda" do
  version "2.7.6"
  sha256 "e3e2732e523fbdb5b8508326e06e2092c95551f1d2f67848dde276c53964706d"

  url "https://download.panic.com/coda/Coda%20#{version}.zip"
  appcast "https://www.panic.com/updates/update.php?appName=Coda%202&appVersion=1"
  name "Panic Coda"
  desc "Text editor"
  homepage "https://panic.com/coda/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Coda #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Coda #{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.panic.coda2.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/com.panic.Coda#{version.major}.help*",
    "~/Library/Caches/com.panic.Coda#{version.major}",
    "~/Library/Preferences/com.panic.Coda#{version.major}.plist",
    "~/Library/Saved Application State/com.panic.Coda#{version.major}.savedState",
  ]
end
