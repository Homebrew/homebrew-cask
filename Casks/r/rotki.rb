cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.42.1"
  sha256 arm:   "4b7c0331cc2787a8e7eb4635cba83dbcd7f1db0d8c3ef7ea3a4fef4ff61f32ff",
         intel: "c0bc479d0cd1b0142adfe421697356bda6e64a49d7bf020efc8101a38fdb864e"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_#{arch}-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "rotki.app"

  zap trash: [
    "~/Library/Application Support/rotki",
    "~/Library/Preferences/com.rotki.app.plist",
    "~/Library/Saved Application State/com.rotki.app.savedState",
  ]
end
