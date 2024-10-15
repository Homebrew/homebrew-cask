cask "streamlabs" do
  arch arm: "-arm64"

  version "1.17.0"
  sha256 arm:   "859232c8ac81f3f58afbabf85bc78773e584fe4412af771b2f9cc592e78968c7",
         intel: "d3f30634b7ce34cb031a783f37d87fad0d568a441ec41527ff1ed46cf38e96f0"

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
