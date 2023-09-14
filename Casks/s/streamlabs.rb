cask "streamlabs" do
  arch arm: "-arm64"

  version "1.13.3"
  sha256 arm:   "b803063d672e6a45e6b4ab9b493355ca4c160ad8aada6d2c7a791cfec728c93e",
         intel: "da44d2ff5888bf1aa07123a3f740658fddea56b5dda629ef1207f6a9af3a259e"

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
