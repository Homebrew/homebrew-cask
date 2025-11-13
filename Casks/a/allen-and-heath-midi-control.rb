cask "allen-and-heath-midi-control" do
  version "2.2,2025,06"
  sha256 "8acabe7640b39c0a20dcb356b32f0e9cee27cd75381b7aef22efc2db988ae6e8"

  url "https://www.allen-heath.com/content/uploads/#{version.csv.second}/#{version.csv.third}/Allen-and-Heath-MIDI-Control-V#{version.csv.first}-Mac.zip",
      user_agent: :browser
  name "Allen & Heath Midi Control"
  desc "Midi control software for Allen & Heath audio consoles"
  homepage "https://www.allen-heath.com/midi-control/"

  disable! date: "2025-09-15", because: :unreachable

  container nested: "Allen and Heath MIDI Control #{version.csv.first}.dmg"

  app "Allen and Heath MIDI Control.app"

  zap trash: [
    "~/Library/Preferences/com.allenheath.midicontrol.plist",
    "~/Library/Preferences/com.com-allenheath.MIDI Control.plist",
  ]

  caveats do
    requires_rosetta
  end
end
