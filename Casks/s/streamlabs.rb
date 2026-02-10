cask "streamlabs" do
  arch arm: "-arm64"

  version "1.20.6"
  sha256 arm:   "4cbca4292a3167c0c37eff0dbb9926274858e5b6572f812b1a2b954ed17d41ca",
         intel: "f60ac1884f3c6d38bd5a7d641a6ae20fdfe8313dcedc48926924107c346477f0"

  url "https://slobs-cdn.streamlabs.com/Streamlabs+Desktop-#{version}#{arch}.dmg"
  name "Streamlabs Desktop"
  desc "All-in-one live streaming software"
  homepage "https://streamlabs.com/"

  livecheck do
    url "https://slobs-cdn.streamlabs.com/desktop-latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Streamlabs Desktop.app"

  zap trash: [
    "~/Library/Application Support/slobs-client",
    "~/Library/Application Support/slobs-plugins",
    "~/Library/Preferences/com.streamlabs.slobs.plist",
    "~/Library/Saved Application State/com.streamlabs.slobs.savedState",
  ]
end
