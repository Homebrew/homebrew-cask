cask "lofi" do
  version "1.5.0"
  sha256 "a26631070888a0c5937a140fc751bf3af1c8b21767c7893285fed83cb1b813e1"

  url "https://github.com/dvx/lofi/releases/download/#{version}/lofi-#{version}.dmg",
      verified: "github.com/dvx/lofi/"
  appcast "https://github.com/dvx/lofi/releases.atom"
  name "Lofi"
  desc "Mini Spotify player with WebGL visualizations"
  homepage "https://www.lofi.rocks/"

  app "Lofi.app"

  zap trash: [
    "~/Library/Application Support/lofi",
    "~/Library/Preferences/lofi.rocks.plist",
    "~/Library/Saved Application State/lofi.rocks.savedState",
  ]
end
