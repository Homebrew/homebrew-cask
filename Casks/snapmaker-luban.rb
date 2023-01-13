cask "snapmaker-luban" do
  version "4.4.0"
  sha256 "2d5f0414ee91a1dc7673ce5b4175e1baaad5d769e45a88a38240d131184c647f"

  url "https://github.com/snapmaker/luban/releases/download/v#{version}/Snapmaker-Luban-#{version}-mac.zip",
      verified: "github.com/snapmaker/luban/"
  # appcast "https://github.com/snapmaker/luban/releases.atom"
  name "Snapmaker Luban"
  desc "3D printing software"
  homepage "https://luban.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Snapmaker Luban.app"

  zap trash: [
    "~/Library/Caches/com.snapmaker.luban",
    "~/Library/Caches/com.snapmaker.luban.ShipIt",
    "~/Library/Preferences/ByHost/com.snapmaker.luban.ShipIt.*.plist",
    "~/Library/Preferences/com.snapmaker.luban.helper.plist",
    "~/Library/Preferences/com.snapmaker.luban.plist",
    "~/Library/Saved Application State/com.snapmaker.luban.savedState",
  ]
end
