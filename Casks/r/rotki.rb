cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.43.0"
  sha256 arm:   "e8ecfd4a550db6b8094566cf1d13bf3c54ae730c783a95509fb87a9fa169f0e3",
         intel: "10e8f7f35dd153f1b59e52211ff8af8127d27cf083e355b0ebc7c5a4c9034aeb"

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
