cask "lofi" do
  version "1.6.0"
  sha256 "9b0373b37fc1fd61075963ddd3e109523150b3cc09de8aeef8f83bf3dfa24cf9"

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
