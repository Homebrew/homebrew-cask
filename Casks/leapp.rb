cask "leapp" do
  arch arm: "-arm64"

  version "0.17.3"
  sha256 arm:   "0d6ff055897122cfb1a0b6bdc77e69e99371d7686805f26b4c708ebc1e546b23",
         intel: "aaeec65b581dcdc20aee46bbcfc6ab9b066d3a77f1a1a4d37cdd0923fb2167de"

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
