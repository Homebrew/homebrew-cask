cask "leapp" do
  arch arm: "-arm64"

  version "0.16.1"
  sha256 arm:   "04ae2b0d140ab200b647d98603339a3387b4ecd1bda53b7efc7f998a2d5b8e1c",
         intel: "b5b32a4063ac7284b9c268bfa37da59629d999ebb5ca8adaadebd8bf2ed21212"

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
