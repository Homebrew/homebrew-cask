cask "fork" do
  version "2.1.2"
  sha256 "f24e953f83612d32412f53b4b77cf5ffe8e2b32da88de8b6099f675d73b577bd"

  # forkapp.ams3.cdn.digitaloceanspaces.com/mac/ was verified as official when first introduced to the cask
  url "https://forkapp.ams3.cdn.digitaloceanspaces.com/mac/Fork-#{version}.dmg"
  appcast "https://git-fork.com/update/feed.xml"
  name "Fork"
  desc "GIT client"
  homepage "https://git-fork.com/"

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
