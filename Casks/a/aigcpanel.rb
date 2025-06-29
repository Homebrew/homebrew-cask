cask "aigcpanel" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "402739f7357f73b99d4a722d40934b3ad10b6361014ca30b5cef74b78f8be1b8",
         intel: "b45fdc6907d48257b98e9845d3749ebe70daa09d2ffab78670ff2bc897b6ef23"

  url "https://github.com/modstart-lib/aigcpanel/releases/download/v#{version}/AigcPanel-#{version}-mac-#{arch}.dmg",
      verified: "github.com/modstart-lib/aigcpanel/"
  name "AigcPanel"
  desc "AI video, audio and broadcast generator"
  homepage "https://aigcpanel.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "AigcPanel.app"

  zap trash: [
    "~/Library/Application Support/aigcpanel",
    "~/Library/Preferences/AigcPanel.plist",
    "~/Library/Saved Application State/AigcPanel.savedState",
  ]
end
