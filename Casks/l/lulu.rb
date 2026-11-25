cask "lulu" do
  version "4.5.7"
  sha256 "8d60f32b6972648aab9203f2f68bd3a804e2e05c23d60200d5e093d6bdb06e8c"

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
