cask "mumble" do
  version "1.5.634"
  sha256 "74556f79a48b6a9fef3c5d8458915d80f38e55384fe02db5fbd5df37c87ca387"

  url "https://github.com/mumble-voip/mumble/releases/download/v#{version}/mumble_client-#{version}.x64.dmg",
      verified: "github.com/mumble-voip/mumble/"
  name "Mumble"
  desc "Open-source, low-latency, high quality voice chat software for gaming"
  homepage "https://www.mumble.info/"

  livecheck do
    url "https://dl.mumble.info/latest/stable/client-macos-x64"
    strategy :header_match
  end

  conflicts_with cask: "mumble@snapshot"
  depends_on macos: ">= :high_sierra"

  app "Mumble.app"

  zap trash: [
    "/Library/ScriptingAdditions/MumbleOverlay.osax",
    "~/Library/Application Support/Mumble",
    "~/Library/Logs/Mumble.log",
    "~/Library/Preferences/net.sourceforge.mumble.Mumble.plist",
    "~/Library/Saved Application State/net.sourceforge.mumble.Mumble.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
