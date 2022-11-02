cask "leapp" do
  arch arm: "-arm64"

  version "0.16.0"
  sha256 arm:   "61b73f26785664c9c5176347604a511563b45d76fcddfe1d5b4d1197813f77e0",
         intel: "602f989ff95d8e43b3afc4439c7b4bc91c69e47678e45b5f423a4dde42e15a98"

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
