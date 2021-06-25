cask "fork" do
  version "2.9"
  sha256 "ffa60465c03ebc4e9ce52cf06d5fdf5448de8708eb54ccaf5b8a504308189e3e"

  url "https://forkapp.ams3.cdn.digitaloceanspaces.com/mac/Fork-#{version}.dmg",
      verified: "forkapp.ams3.cdn.digitaloceanspaces.com/mac/"
  name "Fork"
  desc "GIT client"
  homepage "https://git-fork.com/"

  livecheck do
    url "https://git-fork.com/update/feed.xml"
    strategy :sparkle do |item|
      item.url[%r{/Fork-(\d+(?:\.\d+)*)\.dmg}i, 1]
    end
  end

  auto_updates true

  app "Fork.app"
  binary "#{appdir}/Fork.app/Contents/Resources/fork_cli", target: "fork"

  zap trash: [
    "~/Library/Application Support/Fork",
    "~/Library/Application Support/com.DanPristupov.Fork",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.danpristupov.fork.sfl2",
    "~/Library/Caches/com.DanPristupov.Fork",
    "~/Library/Cookies/com.DanPristupov.Fork.binarycookies",
    "~/Library/Logs/Fork.log",
    "~/Library/Preferences/com.DanPristupov.Fork.plist",
    "~/Library/Saved Application State/com.DanPristupov.Fork.savedState",
    "~/Library/WebKit/com.DanPristupov.Fork",
  ]
end
