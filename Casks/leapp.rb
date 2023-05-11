cask "leapp" do
  arch arm: "-arm64"

  version "0.17.6"
  sha256 arm:   "557ac6d2c6fb780305df655f0ceffdf698623b0104b22c4df6b64a85d0e75b85",
         intel: "236e0ee4863f2ab11f7d7fe9a1b238a1c9298548610ad0b76934ef298b33abbe"

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
