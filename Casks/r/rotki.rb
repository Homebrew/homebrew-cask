cask "rotki" do
  arch arm: "arm64", intel: "x64"

  version "1.43.2"
  sha256 arm:   "ae903f197516894e574b44d2d35f16dbe914082b6b089d39babae9f7c02be729",
         intel: "9496ce2b1452e0011160eee2824388420799dca3260aa1a11a3b6843bc24e9bb"

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
