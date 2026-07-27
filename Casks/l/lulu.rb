cask "lulu" do
  version "4.4.1"
  sha256 "ee9c561705f646bb0f2cf2ba02484affab6f18ada44e09e4f0b426153fb59891"

  url "https://github.com/objective-see/LuLu/releases/download/v#{version}/LuLu_#{version}.dmg",
      verified: "github.com/objective-see/LuLu/"
  name "LuLu"
  desc "Open-source firewall to block unknown outgoing connections"
  homepage "https://objective-see.org/products/lulu.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "LuLu.app"

  # Lulu's uninstaller removes all preference files which breaks `brew upgrade`
  zap trash: [
    "~/Library/Caches/com.objective-see.lulu",
    "~/Library/Caches/com.objective-see.lulu.helper",
    "~/Library/Preferences/com.objective-see.lulu.helper.plist",
    "~/Library/Preferences/com.objective-see.lulu.plist",
  ]
end
