cask "midiview" do
  version "1.2.0"
  sha256 :no_check

  url "https://hautetechnique.com/apps/backend/v1/apps/midiview/latest/macOS"
  name "Midi View"
  desc "Monitor MIDI inputs and outputs"
  homepage "https://hautetechnique.com/midi/midiview/"

  livecheck do
    url :url
    strategy :header_match
  end

  app "MidiView.app"

  zap trash: [
    "~/Library/Application Support/MidiView",
    "~/Library/Preferences/com.hautetechnique.midiview.plist",
  ]
end
