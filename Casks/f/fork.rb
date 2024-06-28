cask "fork" do
  version "2.44"
  sha256 "d0d73e33df446de262c9d175f17cd8a0afed6e7911549efb27385365953c06c3"

  url "https://cdn.fork.dev/mac/Fork-#{version}.dmg"
  name "Fork"
  desc "GIT client"
  homepage "https://fork.dev/"

  livecheck do
    url "https://git-fork.com/update/feed.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Fork.app"
  binary "#{appdir}/Fork.app/Contents/Resources/fork_cli", target: "fork"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.danpristupov.fork.sfl*",
    "~/Library/Application Support/com.DanPristupov.Fork",
    "~/Library/Application Support/Fork",
    "~/Library/Caches/com.DanPristupov.Fork",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DanPristupov.Fork",
    "~/Library/Cookies/com.DanPristupov.Fork.binarycookies",
    "~/Library/HTTPStorages/com.DanPristupov.Fork",
    "~/Library/HTTPStorages/com.DanPristupov.Fork.binarycookies",
    "~/Library/Logs/Fork.log",
    "~/Library/Preferences/com.DanPristupov.Fork.plist",
    "~/Library/Saved Application State/com.DanPristupov.Fork.savedState",
    "~/Library/WebKit/com.DanPristupov.Fork",
  ]
end
