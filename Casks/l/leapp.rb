cask "leapp" do
  arch arm: "-arm64"

  version "0.25.2"
  sha256 arm:   "b064fc48f9369dbe7a63b8a7cbda4cd4284490738d420e361c99639814e5f62f",
         intel: "1348060adce2c16622f39f1bf523f21f7ec17feea3a3b8e9d2bd633a5f333871"

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
