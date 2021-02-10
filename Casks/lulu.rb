cask "lulu" do
  version "2.3.0"
  sha256 "d342f843b7a6b52cc1bb5784f730b5b8bd9dd4b5635fe2b70aba8ef5e55ad6c0"

  url "https://github.com/objective-see/LuLu/releases/download/v#{version}/LuLu_#{version}.dmg",
      verified: "github.com/objective-see/LuLu/"
  name "LuLu"
  desc "Open-source firewall to block unknown outgoing connections"
  homepage "https://objective-see.com/products/lulu.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "LuLu.app"

  uninstall script: {
    executable: "#{appdir}/LuLu.app/Contents/Resources/LuLu Uninstaller.app/Contents/MacOS/LuLu Uninstaller",
    args:       ["-uninstall"],
    sudo:       true,
  }

  zap trash: [
    "~/Library/Caches/com.objective-see.lulu",
    "~/Library/Caches/com.objective-see.lulu.helper",
    "~/Library/Preferences/com.objective-see.lulu.plist",
    "~/Library/Preferences/com.objective-see.lulu.helper.plist",
  ]
end
