cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.33.1"
  sha256 arm:   "da6f32d08ebdb3771e6b5ff54e4790c7c85008591ab568026bb2486eb49580b0",
         intel: "46a24e1656f9f38130cc681e5a43deca047f21bac8d13282ef942314411a3879"

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
