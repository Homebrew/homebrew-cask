cask "streamlabs" do
  arch arm: "-arm64"

  version "1.16.7"
  sha256 arm:   "41f7d69052e6ba22716156e1289235ce63cd8deff801e7bc10cdea272095a47f",
         intel: "92c64ff9a5959d7f154a21576d30d0f21711c56b23c0a53778dd35fc6d47887d"

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
