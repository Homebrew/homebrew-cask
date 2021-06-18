cask "midikeys" do
  version "1.9.1"
  sha256 "c99bc47b141250b16672303a2530c99109bab9a6b52edfb5929433ece3c7cdf8"

  url "https://github.com/flit/MidiKeys/releases/download/v#{version}/MidiKeys_#{version}.zip",
      verified: "github.com/flit/MidiKeys/"
  name "MidiKeys"
  homepage "https://www.manyetas.com/creed/midikeys.html"

  livecheck do
    url "https://immosw.com/versions/midikeys/appcast.xml"
    strategy :sparkle
  end

  app "MidiKeys.app"
end
