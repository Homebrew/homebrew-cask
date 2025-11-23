cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.41.1"
  sha256 arm:   "6c9c324c67035bf0b834c57d6e337d654b634d225c934ff4e9b864f0d9935b05",
         intel: "fbf0fc8ebb489db644d4398ca904a1fcf690e1fba34882bca1d1f1d843a46a1d"

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
