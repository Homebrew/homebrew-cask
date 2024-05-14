cask "snapmaker-luban" do
  arch arm: "-arm64", intel: "-x64"

  version "4.12.0"
  sha256 arm:   "47c17a3be8a96886f1fbd02733d37ae2f8a626416b1bdd925e6c3f66e34d7593",
         intel: "f0163bc986567ddc2bde6b9bb75d3c10489939da5333a627ed5de299782fc355"

  url "https://github.com/snapmaker/luban/releases/download/v#{version}/Snapmaker-Luban-#{version}-mac#{arch}.dmg",
      verified: "github.com/snapmaker/luban/"
  name "Snapmaker Luban"
  desc "3D printing software"
  homepage "https://snapmaker.com/snapmaker-luban"

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
