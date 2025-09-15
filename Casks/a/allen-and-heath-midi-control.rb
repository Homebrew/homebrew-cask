cask "allen-and-heath-midi-control" do
  version "2.2,2025,06"
  sha256 "8acabe7640b39c0a20dcb356b32f0e9cee27cd75381b7aef22efc2db988ae6e8"

  url "https://www.allen-heath.com/content/uploads/#{version.csv.second}/#{version.csv.third}/Allen-and-Heath-MIDI-Control-V#{version.csv.first}-Mac.zip",
      user_agent: :browser
  name "Allen & Heath Midi Control"
  desc "Midi control software for Allen & Heath audio consoles"
  homepage "https://www.allen-heath.com/midi-control/"

  livecheck do
    url "https://www.allen-heath.com/hardware/controllers/midi-control/resources/"
    regex(%r{href=.*?/([^/]+)/([^/]+)/Allen-and-Heath-MIDI-Control[._-]v?(\d+(?:\.\d+)+)(?:-Mac)?\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.third},#{match.first},#{match.second}" }
    end
  end

  disable! date: "2025-09-15", because: :unreachable

  depends_on macos: ">= :high_sierra"
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
