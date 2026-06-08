cask "lulu" do
  version "4.3.2"
  sha256 "651d85539cb7008b33b8571215a8b8040f4f26d77306675e9c8972294a80f541"

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
