cask "snapmaker-luban" do
  arch arm: "-arm64", intel: "-x64"

  version "4.5.1"
  sha256 arm:   "02cf589030c4894c63b0823ad69b69ec7c6ac74d4dc697e231a430e3e3f53e4e",
         intel: "be308982cc03831401ee975fb67de86a9a364866470d68e384d2da04d6692055"

  url "https://github.com/snapmaker/luban/releases/download/v#{version}/Snapmaker-Luban-#{version}-mac#{arch}.dmg",
      verified: "github.com/snapmaker/luban/"
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
