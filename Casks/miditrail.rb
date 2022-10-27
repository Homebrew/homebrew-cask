cask "miditrail" do
  version "2.0.1,77925"
  sha256 "99f7f26aea4e02739aa31da1de1ff7e36f3e286e8c1015804adfe9f61524f302"

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
