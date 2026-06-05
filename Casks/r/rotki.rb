cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.43.1"
  sha256 arm:   "5c446e36307d7c1fa6d24ec098c0073409be4c391b8c20f9f1e04e11ad47c09a",
         intel: "51e69676d492a59c52efc771af9793cab08d529fb1e0ce48515881ae75419aab"

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
