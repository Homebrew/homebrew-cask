cask "lofi" do
  version "1.6.1"
  sha256 "dd30d8cf7bb60d274e5046a52b1254ff02a13058342a07214329f26afd1d7afa"

  url "https://github.com/dvx/lofi/releases/download/v#{version}/lofi-#{version}.dmg",
      verified: "github.com/dvx/lofi/"
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
