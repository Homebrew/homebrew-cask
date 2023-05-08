cask "leapp" do
  arch arm: "-arm64"

  version "0.17.5"
  sha256 arm:   "7cbe277a17b21821acd94da4f194b96b935bc5b19fd2a9cff75d1de35e01b98e",
         intel: "858b90f6b368347aa75ffe438a1d6606e6de9a97c928f8902d72ab8118c675cf"

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
