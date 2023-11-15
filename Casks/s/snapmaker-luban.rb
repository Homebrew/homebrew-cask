cask "snapmaker-luban" do
  arch arm: "-arm64", intel: "-x64"

  version "4.10.1"
  sha256 arm:   "4a401b17f5f67a5c16f567b32b880ebe4e3a9e2679396d48e5fbefaa08728c17",
         intel: "ee6dab1e393d65e950250ea53868a5cd6c786fad518eaf9e61d0fcf454dc4a56"

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
