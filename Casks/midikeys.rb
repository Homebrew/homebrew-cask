cask "midikeys" do
  version "1.9.0"
  sha256 "1a0d01695e039683429ff9fd679d4094756b95f2e46efb967e54eb14948ddb18"

  url "https://github.com/flit/MidiKeys/releases/download/v#{version}/MidiKeys_#{version.major_minor}.zip",
      verified: "github.com/flit/MidiKeys/"
  name "MidiKeys"
  homepage "https://www.manyetas.com/creed/midikeys.html"

  livecheck do
    url "https://immosw.com/versions/midikeys/appcast.xml"
    strategy :sparkle
  end

  app "MidiKeys.app"
end
