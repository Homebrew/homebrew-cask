cask "leapp" do
  arch arm: "-arm64"

  version "0.17.1"
  sha256 arm:   "6a2cf1d2b1e95bbe65bf4508f4ff1a7826b803e98d8117e3aaa1d73e00ee5fb1",
         intel: "856efbe7f8cd5b6bedeaba3c604cd685d8d93cd59bf2bdd7f5240d8005862df1"

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
