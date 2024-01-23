cask "leapp" do
  arch arm: "-arm64"

  version "0.24.3"
  sha256 arm:   "16d9f11db1bff522c5b344200eb888d5d1ab487352ef07f37042995230abf24a",
         intel: "38546e385e5b147c0b5d12672b3bdabe07ea6f04ff395729920789d6ccb14ba0"

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
