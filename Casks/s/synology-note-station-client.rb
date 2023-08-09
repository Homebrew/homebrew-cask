cask "synology-note-station-client" do
  version "2.2.3-653"
  sha256 "31a030f8e891bbd414d517da8cb2f1718ad45f928590d49000d4e02d0455cc7c"

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
    "~/Library/Saved Application State/synology.note.station.savedState",
    "~/Library/Preferences/synology.note.station.plist",
  ]
end
