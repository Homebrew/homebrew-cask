cask "focusany" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "be5f5f952549ce23f1bb90442f7c0019531a62f26b9e600582a8c40a34e29d68",
         intel: "3651f39c3cfd2a7a41351bd242d88b1c2d78ee1feb08d347599ecbccf509ba35"

  url "https://github.com/modstart-lib/focusany/releases/download/v#{version}/FocusAny-#{version}-mac-#{arch}.dmg",
      verified: "github.com/modstart-lib/focusany/"
  name "FocusAny"
  desc "Open source desktop toolbox"
  homepage "https://focusany.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "FocusAny.app"

  zap trash: [
    "~/Library/Application Support/focusany",
    "~/Library/Preferences/FocusAny.plist",
    "~/Library/Saved Application State/FocusAny.savedState",
  ]
end
