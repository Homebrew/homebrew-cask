cask "synology-note-station-client" do
  version "2.2.1-553"
  sha256 "ea6f5d3a670bd6c917c0387b1287a32683300fb1ef558ad0cf5159d394782670"

  url "https://global.download.synology.com/download/Utility/NoteStationClient/#{version}/Mac/x86_64/synology-note-station-client-#{version}-mac-x64.dmg"
  name "Synology Note Station Client"
  desc "Write, view, manage and share content-rich notes"
  homepage "https://www.synology.com/en-us/dsm/packages/NoteStation"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/NoteStationClient"
    strategy :page_match
    regex(/Version:\s*(\d+(?:\.\d+)*-\d+)/i)
  end

  app "Synology Note Station Client.app"
end
