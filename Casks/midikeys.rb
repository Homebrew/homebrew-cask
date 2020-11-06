cask "midikeys" do
  version "1.9.0"
  sha256 "1a0d01695e039683429ff9fd679d4094756b95f2e46efb967e54eb14948ddb18"

  # github.com/flit/MidiKeys/ was verified as official when first introduced to the cask
  url "https://github.com/flit/MidiKeys/releases/download/v#{version}/MidiKeys_#{version.major_minor}.zip"
  appcast "https://immosw.com/versions/midikeys/appcast.xml"
  name "MidiKeys"
  homepage "https://www.manyetas.com/creed/midikeys.html"

  app "MidiKeys.app"
end
