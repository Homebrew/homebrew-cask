cask "mumble" do
  version "1.4.274"
  sha256 "f8979258f75b3d2b1afa573f57ef19ff87a0e8a17f3f95ea14a700658a5567a0"

  url "https://github.com/mumble-voip/mumble/releases/download/v#{version}/mumble_client-#{version}.dmg",
      verified: "github.com/mumble-voip/mumble/"
  name "Mumble"
  desc "Open-source, low-latency, high quality voice chat software for gaming"
  homepage "https://wiki.mumble.info/wiki/Main_Page"

  livecheck do
    url "https://dl.mumble.info/latest/stable/client-macos-x64"
    strategy :header_match
  end

  conflicts_with cask: "homebrew/cask-versions/mumble-snapshot"
  depends_on macos: ">= :high_sierra"

  app "Mumble.app"

  zap trash: [
    "~/Library/Application Support/Mumble",
    "~/Library/Logs/Mumble.log",
    "~/Library/Preferences/net.sourceforge.mumble.Mumble.plist",
    "~/Library/Saved Application State/net.sourceforge.mumble.Mumble.savedState",
    "/Library/ScriptingAdditions/MumbleOverlay.osax",
  ]
end
