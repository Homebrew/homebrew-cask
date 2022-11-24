cask "leapp" do
  arch arm: "-arm64"

  version "0.16.2"
  sha256 arm:   "a2c854a853eb9eb49aa3e7acfc48048f1cbc5d0b0798bac31e00d57d40e31704",
         intel: "e5d3942bd65d4a77941903413fc51abcb61a4fd6ead0f918deb8b01697942747"

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
