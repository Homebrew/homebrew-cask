cask "snapmaker-luban" do
  arch arm: "-arm64", intel: "-x64"

  version "4.6.2"
  sha256 arm:   "dd007ecafa6b60bc0fbdb990bc999fe9235320db06264da41cc9efff24b1cacc",
         intel: "dab20eda619b3852e2a7878c9dcb8888db8d28e7cb20f00b5cca3cc1f7609db4"

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
