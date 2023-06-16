cask "leapp" do
  arch arm: "-arm64"

  version "0.17.7"
  sha256 arm:   "78da8b784af97e8d22c20882f3865ae958aa47dfb09a6ac02df2db1272b35073",
         intel: "b3e3b5d9ebb36ac3f20dabaaa2caf25149ad74249af797bcacff4f896c6a3b9e"

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
