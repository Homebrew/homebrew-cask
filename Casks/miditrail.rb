cask "miditrail" do
  version "1.3.6,77557"
  sha256 "ee6c8a69e823cebb09e4de7e7b4a0ea20de4ca149144f03517deef83969484c5"

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
