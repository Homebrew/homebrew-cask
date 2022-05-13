cask "flock" do
  version "2.2.509"
  sha256 "4319dfd3eafa83dc2fa73317fb00cab8baccf938dd12dc2cefcedcab4b3fe132"

  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg",
      verified: "flock.co/"
  name "Flock"
  desc "Business messaging and team collaboration app"
  homepage "https://flock.com/"

  livecheck do
    url "https://bingo.flock.co/dl.php?client=mac"
    strategy :header_match
  end

  app "Flock.app"

  zap trash: [
    "~/Library/Application Support/Flock",
    "~/Library/Logs/Flock",
    "~/Library/Preferences/to.go.osx.plist",
    "~/Library/Saved Application State/to.go.osx.savedState",
  ]
end
