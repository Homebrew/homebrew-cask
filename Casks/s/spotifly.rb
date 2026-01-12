cask "spotifly" do
  version "1.2.0"
  sha256 "4dd600be959f95fa9376469249a419573b1e1b5cf2bdb989e604611987aeb730"

  url "https://github.com/ralph/spotifly/releases/download/v#{version}/Spotifly-#{version}.zip"
  name "Spotifly"
  desc "Lightweight Spotify player"
  homepage "https://github.com/ralph/spotifly"

  depends_on macos: ">= :tahoe"

  app "Spotifly.app"

  zap trash: [
    "~/Library/Application Support/Spotifly",
    "~/Library/Caches/rvdh.Spotifly",
    "~/Library/HTTPStorages/rvdh.Spotifly",
    "~/Library/Preferences/rvdh.Spotifly.plist",
    "~/Library/Saved Application State/rvdh.Spotifly.savedState",
  ]
end
