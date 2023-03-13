cask "sonixd" do
  arch arm: "arm64", intel: "x64"

  version "0.15.4"
  sha256 arm:   "6b9ea6054a920172383a56738ae9e0d005abe84dad1b2226de1f3f2d3d892bcd",
         intel: "f2e0d163c468674b13be511e68d146abcc814175a3d005023c5797d4502f8ed6"

  url "https://github.com/jeffvli/sonixd/releases/download/v#{version}/Sonixd-#{version}-mac-#{arch}.dmg"
  name "Sonixd"
  desc "Desktop client for Subsonic-API and Jellyfin music servers"
  homepage "https://github.com/jeffvli/sonixd"

  app "Sonixd.app"

  zap trash: [
    "~/Library/Application Support/Sonixd",
    "~/Library/Caches/org.erb.sonixd",
    "~/Library/Caches/org.erb.sonixd.ShipIt",
    "~/Library/Preferences/org.erb.sonixd.plist",
    "~/Library/Saved Application State/org.erb.sonixd.savedState",
  ]
end
