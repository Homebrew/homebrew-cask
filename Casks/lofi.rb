cask "lofi" do
  version "2.0.0"
  sha256 "1100407ba583c3c307843aede615844791f5584dafe4b7f202ce9c067fed3a87"

  url "https://github.com/dvx/lofi/releases/download/v#{version}/lofi-#{version}.dmg",
      verified: "github.com/dvx/lofi/"
  name "Lofi"
  desc "Spotify player with WebGL visualizations"
  homepage "https://www.lofi.rocks/"

  app "Lofi.app"

  zap trash: [
    "~/Library/Application Support/lofi",
    "~/Library/Preferences/lofi.rocks.plist",
    "~/Library/Saved Application State/lofi.rocks.savedState",
  ]
end
