cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.40.1"
  sha256 arm:   "5efe7a946b35c1729c31086c969af95fb0b5b531a4e0d2b6eb1db9549eb6d16e",
         intel: "a6fa77896855e59b9707dd9db980f857b4b830c93bfce8aaffb02d8dfb24c903"

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
