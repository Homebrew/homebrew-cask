cask "floorp" do
  version "11.3.2"
  sha256 "ceb10603888b93672cc1ac18e2a1b98625f56ec9bb2f2d82f94e34f2a7f512b1"

  url "https://github.com/Floorp-Projects/Floorp/releases/download/v#{version}/floorp-macOS-universal.dmg",
  verified: "github.com/Floorp-Projects"
  name "Floorp browser"
  desc "Firefox based browser with excellent privacy"
  homepage "https://floorp.app"
  auto_updates true

  app "Floorp.app"

  zap trash: [
    # "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.floorp.sfl*",
    "~/Library/Application Support/Floorp",
    "~/Library/Caches/Floorp",
    "~/Library/Preferences/one.ablaze.floorp.plist",
  ]
end
