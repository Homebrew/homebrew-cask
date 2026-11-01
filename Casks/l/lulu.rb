cask "lulu" do
  version "4.5.6"
  sha256 "805519c0e6132e3f9449e939a8d33c564536f7e3d0a185a1f78e17a805e8de8a"

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
