cask "synology-note-station-client" do
  version "2.1.6-272"
  sha256 "abf3f0add609bb7eb4ed36e180a140f74cda62004cfc996f785a2c45e09fc360"

  url "https://global.download.synology.com/download/Tools/NoteStationClient/#{version}/Mac/x86_64/synology-note-station-client-#{version}-mac-x64.dmg"
  appcast "https://archive.synology.com/download/Tools/NoteStationClient/"
  name "Synology Note Station Client"
  homepage "https://www.synology.com/en-us/dsm/packages/NoteStation"

  app "Synology Note Station Client.app"
end
