cask "streamlabs" do
  arch arm: "-arm64"

  version "1.19.2"
  sha256 arm:   "ff8dc791fc32256a6c38e7ea297c07c0b5ff5e4945abea2a4769fd67fe725157",
         intel: "ab5ef5672dbfa1cb3b44738fc5a27bfb42cc845327e92dd3b468ce32e50d4b78"

  url "https://slobs-cdn.streamlabs.com/Streamlabs+Desktop-#{version}#{arch}.dmg"
  name "Streamlabs Desktop"
  desc "All-in-one live streaming software"
  homepage "https://streamlabs.com/"

  livecheck do
    url "https://slobs-cdn.streamlabs.com/desktop-latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Streamlabs Desktop.app"

  zap trash: [
    "~/Library/Application Support/slobs-client",
    "~/Library/Application Support/slobs-plugins",
    "~/Library/Preferences/com.streamlabs.slobs.plist",
    "~/Library/Saved Application State/com.streamlabs.slobs.savedState",
  ]
end
