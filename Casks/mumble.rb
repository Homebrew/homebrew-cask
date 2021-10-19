cask "mumble" do
  version "1.3.3"
  sha256 "dd779a1be92dfb162f7453230f8906f2a7d1799324c5b710fcc5ccd381ff12e5"

  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg",
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
