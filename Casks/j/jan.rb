cask "jan" do
  version "0.5.17"
  sha256 "8f73f900de9da938b0c9ca907c02a2daf0cf7c45c0a64a0211cec643ab7dbc01"

  url "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-universal-#{version}.dmg",
      verified: "github.com/janhq/jan/"
  name "Jan"
  desc "Offline AI chat tool"
  homepage "https://jan.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Jan.app"

  zap trash: [
    "~/Library/Application Support/Jan",
    "~/Library/Preferences/jan.ai.app.plist",
    "~/Library/Saved Application State/jan.ai.app.savedState",
  ]
end
