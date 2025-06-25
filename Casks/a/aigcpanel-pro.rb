cask "aigcpanel-pro" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:   "e77bb35c290286901071be809025e235b00869048342032a7fa2ce8412963b62",
         intel: "d2371d8dd144559018d9d5049d9ed69c9f9e06eedf9dd855a52982cd770e5984"

  url "https://github.com/modstart-lib/aigcpanel/releases/download/v#{version}/AigcPanelPro-#{version}-mac-#{arch}.dmg",
      verified: "github.com/modstart-lib/aigcpanel/"
  name "AigcPanel"
  desc "AI video, audio and broadcast generator"
  homepage "https://aigcpanel.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "aigcpanel"
  depends_on macos: ">= :catalina"

  app "AigcPanel.app"

  zap trash: [
    "~/Library/Application Support/aigcpanel",
    "~/Library/Preferences/AigcPanel.plist",
    "~/Library/Saved Application State/AigcPanel.savedState",
  ]
end
