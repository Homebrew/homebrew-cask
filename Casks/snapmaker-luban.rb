cask "snapmaker-luban" do
  version "4.5.0"
  sha256 "f29c71c9ffbd68a3dc9ca4bd41d9d6b10f7391b53460c19d8caf83858a1c2742"

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
