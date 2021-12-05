cask "arturia-midi-control-center" do
  version "1.13.5.1"
  sha256 "60e75c5aa52a1ce6909eb6ea8e18b0c1e51b3ee6209ce8ef9e3ceb8e4751ec3e"

  url "https://downloads.arturia.net/extra/mcc/MIDI_Control_Center_#{version.dots_to_underscores}.pkg",
      verified: "https://downloads.arturia.net"
  name "Arturia MIDI Control Center"
  desc "MIDI Controller Software"
  homepage "https://www.arturia.com/support/downloads&manuals#mccu-784325106"

  livecheck do
    url "https://www.arturia.com/products/keystep/resources"
    strategy :page_match
    regex(/name="mccu-latest"/)
  end

  pkg "MIDI_Control_Center_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.Arturia.MIDIControlCenter.*"
end
