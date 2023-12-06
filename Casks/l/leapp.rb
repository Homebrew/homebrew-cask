cask "leapp" do
  arch arm: "-arm64"

  version "0.22.2"
  sha256 arm:   "8b98d8a0fcfe238cb1273a016d9a98cc52ec1a2af11dc34f0b8db5e9ad836d8b",
         intel: "ed9697179d7ce0f3337127296c4fd2488d1de653240cfa6b8c466d91f7ac86c5"

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
