cask "miditrail" do
  version "2.0.0,77818"
  sha256 "7f5e9b9e20fc05f63cc7c481150fa82ffefdf6e127bac7b1cb4f8d62377f7629"

  url "https://acc.dl.osdn.jp/miditrail/#{version.csv.second}/MIDITrail-Ver.#{version.csv.first}-macOS.zip",
      verified: "acc.dl.osdn.jp/miditrail/"
  name "MIDITrail"
  desc "MIDI player which provides 3D visualization of MIDI data sets"
  homepage "https://osdn.net/projects/miditrail/"

  livecheck do
    url "https://ja.osdn.net/projects/miditrail/releases/rss"
    strategy :page_match do |page|
      page.scan(%r{url=.+downloads/(\d+)/MIDITrail[._-]Ver[._-](\d+(?:\.\d+)+)[._-]macOS\.zip}i)
          .map { |matches| "#{matches[1]},#{matches[0]}" }
    end
  end

  app "MIDITrail/MIDITrail.app"
end
