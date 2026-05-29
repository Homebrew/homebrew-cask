cask "jan" do
  version "0.8.1"
  sha256 "1df584716f0070dd39555c1e0295367ad28befb413463099cc6b99b7cd2af2eb"

  url "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-universal-#{version}.zip",
      verified: "github.com/janhq/jan/"
  name "Jan"
  desc "Offline AI chat tool"
  homepage "https://jan.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Jan.app"

  zap trash: [
    "~/Library/Application Support/Jan",
    "~/Library/Preferences/jan.ai.app.plist",
    "~/Library/Saved Application State/jan.ai.app.savedState",
  ]
end
