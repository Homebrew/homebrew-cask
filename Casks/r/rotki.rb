cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.41.2"
  sha256 arm:   "ab049ea1bb9de2c67c43939b2fe28f774087f47f9f7362f0367f57e5b7dc56c8",
         intel: "b4e252e7efa5f431dabe74ed7e2f2f13c5bf418de340d34da42898605f024196"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_#{arch}-v#{version}.dmg",
      verified: "github.com/rotki/rotki/"
  name "Rotki"
  desc "Portfolio tracking and accounting tool"
  homepage "https://rotki.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "rotki.app"

  zap trash: [
    "~/Library/Application Support/rotki",
    "~/Library/Preferences/com.rotki.app.plist",
    "~/Library/Saved Application State/com.rotki.app.savedState",
  ]
end
