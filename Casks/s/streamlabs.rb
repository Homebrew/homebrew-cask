cask "streamlabs" do
  arch arm: "-arm64"

  version "1.14.0"
  sha256 arm:   "c0941a717e533656196d75d791ef0a34152fa1bdb45bfa2751c8a831fe4e4b6b",
         intel: "a81b2768af967bc9d24c621793f2a02c94cd3a0ab5388a07fc10a7003496e96b"

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
