cask "mumble" do
  version "1.5.735"
  sha256 "9f7e5f0677e577a480269df218349dca4263a3785461294f3c8f26ca4c308641"

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
