cask "synology-note-station-client" do
  version "2.2.0-524"
  sha256 "db5da01ab9dc82ea4657bc6b4e3883b6f84053e108a8532a20c5c19215c5b215"

  url "https://global.download.synology.com/download/Utility/NoteStationClient/#{version}/Mac/x86_64/synology-note-station-client-#{version}-mac-x64.dmg"
  name "Synology Note Station Client"
  homepage "https://www.synology.com/en-us/dsm/packages/NoteStation"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/NoteStationClient"
    strategy :page_match
    regex(/Version:\s*(\d+(?:\.\d+)*-\d+)/i)
  end

  app "Synology Note Station Client.app"
end
