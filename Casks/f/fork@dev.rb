cask "fork@dev" do
  version "2.66.6"
  sha256 "2928a00d8bd5bafab7e38e39e2b1612e86a7d3cb48efe7686a119be9736f05e0"

  url "https://cdn.fork.dev/mac/Fork-#{version}.dmg"
  name "Fork"
  desc "Git client"
  homepage "https://fork.dev/"

  # The appcast `version` may omit a `0` patch for a new minor release (e.g.
  # 1.23 for 1.23.0) but the filename in the `url` uses the full version, so we
  # match the version from the filename.
  livecheck do
    url "https://fork.dev/update/feed.xml"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :sparkle do |item, regex|
      item.url&.[](regex, 1)
    end
  end

  auto_updates true
  conflicts_with cask: "fork"
  depends_on :macos

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
