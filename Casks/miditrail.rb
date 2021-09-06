cask "miditrail" do
  version "1.3.3,75216"
  sha256 "d67b18790b0ee486b2b2e590a9227940cdf5eca2eb27dcb24df0e85fff3f47b5"

  url "https://acc.dl.osdn.jp/miditrail/#{version.after_comma}/MIDITrail-Ver.#{version.before_comma}-macOS.zip",
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
