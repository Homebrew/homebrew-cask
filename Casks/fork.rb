cask "fork" do
  version "2.20.1"
  sha256 "7cdf9c1d6a9a0c8cddabbbdfcb6842c5a5c4d00c88fdad9781636172a5f1b538"

  url "https://cdn.fork.dev/mac/Fork-#{version}.dmg"
  name "Fork"
  desc "GIT client"
  homepage "https://fork.dev/"

  livecheck do
    url "https://git-fork.com/update/feed.xml"
    strategy :sparkle do |item|
      item.url[%r{/Fork-(\d+(?:\.\d+)+)\.dmg}i, 1]
    end
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/fork-dev"

  app "Fork.app"
  binary "#{appdir}/Fork.app/Contents/Resources/fork_cli", target: "fork"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.danpristupov.fork.sfl2",
    "~/Library/Application Support/com.DanPristupov.Fork",
    "~/Library/Application Support/Fork",
    "~/Library/Caches/com.DanPristupov.Fork",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.DanPristupov.Fork",
    "~/Library/Cookies/com.DanPristupov.Fork.binarycookies",
    "~/Library/HTTPStorages/com.DanPristupov.Fork.binarycookies",
    "~/Library/HTTPStorages/com.DanPristupov.Fork",
    "~/Library/Logs/Fork.log",
    "~/Library/Preferences/com.DanPristupov.Fork.plist",
    "~/Library/Saved Application State/com.DanPristupov.Fork.savedState",
    "~/Library/WebKit/com.DanPristupov.Fork",
  ]
end
