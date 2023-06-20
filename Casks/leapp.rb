cask "leapp" do
  arch arm: "-arm64"

  version "0.17.8"
  sha256 arm:   "02445f3c4e0516370e2b71e2a1b9aee78854934160b04ddba51652dd59f4e403",
         intel: "e8410f9f58f7de7270178c461df936417195f3b93287361ab09407d380f8a360"

  url "https://asset.noovolari.com/#{version}/Leapp-#{version}#{arch}.dmg",
      verified: "asset.noovolari.com/"
  name "Leapp"
  desc "Cloud credentials manager"
  homepage "https://www.leapp.cloud/"

  livecheck do
    url "https://asset.noovolari.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  app "Leapp.app"

  zap trash: [
    "~/.Leapp",
    "~/Library/Application Support/Leapp",
    "~/Library/Logs/Leapp",
    "~/Library/Preferences/com.leapp.app.plist",
    "~/Library/Saved Application State/com.leapp.app.savedState",
  ]
end
