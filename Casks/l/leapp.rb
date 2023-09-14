cask "leapp" do
  arch arm: "-arm64"

  version "0.20.0"
  sha256 arm:   "30681e29c1599a2729edcc26c0c86d8d07c045fbbef029cd1238c7d6df3235d7",
         intel: "84ff31469ae0b2eae8abc9daa27ec1514c8a5179a7ac1b5f3b1caececf3d6fef"

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
