cask "rotki" do
  version "1.29.1"
  sha256 "a031b9a0b628bdf829c5174ae52308ffbd459164a87502203a28f550345b8517"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_x64-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "rotki.app"

  zap trash: [
    "~/Library/Application Support/rotki",
    "~/Library/Preferences/com.rotki.app.plist",
    "~/Library/Saved Application State/com.rotki.app.savedState",
  ]
end
