cask "snapmaker-luban" do
  arch arm: "-arm64", intel: "-x64"

  version "4.8.0"
  sha256 arm:   "f8d88d510b43b9ff00430c6fd88895a9943063d7dd51a89f7b6a7768420568db",
         intel: "6fcbcc74afd22ab30883fa826942096dceb75eb53da0fb2e99e70d21e0f0978b"

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
