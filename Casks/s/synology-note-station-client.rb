cask "synology-note-station-client" do
  version "2.2.5-804"
  sha256 "a15b2ac632dfff5faa63c5e56cf32c2a118ee8c95846830e67a400dacbb2f377"

  url "https://global.download.synology.com/download/Utility/NoteStationClient/#{version}/Mac/x86_64/synology-note-station-client-#{version}-mac-x64.dmg"
  name "Synology Note Station Client"
  desc "Write, view, manage and share content-rich notes"
  homepage "https://www.synology.com/en-us/dsm/packages/NoteStation"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/NoteStationClient"
    regex(/Version:\s*(\d+(?:\.\d+)*-\d+)/i)
  end

  app "Synology Note Station Client.app"

  zap trash: [
    "~/Library/Application Support/synology-note-station-client",
    "~/Library/Caches/synology-note-station-client",
    "~/Library/Preferences/synology.note.station.plist",
    "~/Library/Saved Application State/synology.note.station.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
