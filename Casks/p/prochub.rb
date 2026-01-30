cask "prochub" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "fba837128502a360ec1f8b005abe5884349928e3cc36f27b71d2b842fa34581d",
         intel: "4ca5e79a88e54fbc2094e21d84aac7774dc13a124e957360bb8129644cbb1d37"

  url "https://github.com/modstart-lib/prochub/releases/download/v#{version}/ProcHub-darwin-#{arch}.dmg",
      verified: "github.com/modstart-lib/prochub/"
  name "ProcHub"
  desc "Cross platform process manager"
  homepage "https://github.com/modstart-lib/prochub"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "AigcPanel.app"

  zap trash: [
    "~/Library/Application Support/prochub",
    "~/Library/Preferences/ProcHub.plist",
    "~/Library/Saved Application State/ProcHub.savedState",
  ]
end
