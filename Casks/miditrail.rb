cask "miditrail" do
  version "2.0.2,77944"
  sha256 "15204f7c61703b66c053fc96b6552f53a53b192c3c05c1a4c5a93bd2ce640281"

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
