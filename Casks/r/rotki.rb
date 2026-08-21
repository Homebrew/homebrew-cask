cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.44.0"
  sha256 arm:   "253669c869c455bd1756d3a86a7a7716a737cb4adf4ad7e8dc5f5f05b00f8ef8",
         intel: "9071aabd6ef7e334af850024f0811463acb9ce50deaf6c26c570c99e6979281e"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_#{arch}-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "rotki.app"

  zap trash: [
    "~/Library/Application Support/rotki",
    "~/Library/Preferences/com.rotki.app.plist",
    "~/Library/Saved Application State/com.rotki.app.savedState",
  ]
end
