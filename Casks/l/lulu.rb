cask "lulu" do
  version "4.5.5"
  sha256 "c84c94912405eb852753fc3b51d79ad816d94c6b3b5aec4db4daf2eb8f357597"

  url "https://github.com/objective-see/LuLu/releases/download/v#{version}/LuLu_#{version}.dmg"
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
