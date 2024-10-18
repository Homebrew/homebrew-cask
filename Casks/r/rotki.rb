cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.35.1"
  sha256 arm:   "f873f283b29a1e37344ef2e04fde1ce47545590ad84cdec50b8dcfcbc7156402",
         intel: "772a9e8c3f2aa48baab37c069de35c0f6ed72606dabc8d83cc5e645f0dc638cf"

  url "https://github.com/rotki/rotki/releases/download/v#{version}/rotki-darwin_#{arch}-v#{version}.dmg",
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
