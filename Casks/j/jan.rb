cask "jan" do
  arch arm: "arm64", intel: "x64"

  version "0.5.9"
  sha256 arm:   "190e3cc61892fd5c84b818acbf474981c3858c5e612d3be3437c05fed32c7e84",
         intel: "af6846e4c3fc78ef9e798db0e56150b907d02020139cf9d7d6e1ea402d7326d7"

  url "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-#{arch}-#{version}.dmg",
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
