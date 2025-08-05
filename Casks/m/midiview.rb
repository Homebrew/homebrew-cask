cask "midiview" do
  version "1.2.3,vD6vXdrn"
  sha256 "b19a694f3ee6fc839760b7293df47eed87657bb463cafed6313971cd758d64a6"

  url "https://hautetechnique.com/apps/backend/v1/installers/#{version.csv.second}"
  name "Midi View"
  desc "Monitor MIDI inputs and outputs"
  homepage "https://hautetechnique.com/midi/midiview/"

  livecheck do
    url "https://hautetechnique.com/apps/backend/v1/apps/midiview/cast"
    regex(%r{/installers/(.+)$}i)
    strategy :sparkle do |item, regex|
      "#{item.short_version},#{item.url[regex, 1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "MidiView.app"

  zap trash: [
    "~/Library/Application Support/MidiView",
    "~/Library/Preferences/com.hautetechnique.midiview.plist",
  ]
end
