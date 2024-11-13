cask "streamlabs" do
  arch arm: "-arm64"

  version "1.17.2"
  sha256 arm:   "542cbe5d8b9ff3820aec158773d1b6cbc5aba80bd63033ea6d741c146eba00f5",
         intel: "ada212dc006e668f39c5d167c201b5547dfe5f9bbb50b0566f2a6c93a9384573"

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
