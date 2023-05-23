cask "midiview" do
  version "1.2.0,Ke6OYmrQ"
  sha256 "25ea4e903c7eba3c3768c7de5d2dea16aeccf43812ce1e596d4959de4cdf769f"

  url "https://hautetechnique.com/apps/backend/v1/installers/#{version.csv.second}"
  name "Midi View"
  desc "Monitor MIDI inputs and outputs"
  homepage "https://hautetechnique.com/midi/midiview/"

  livecheck do
    url "https://hautetechnique.com/apps/backend/v1/apps/midiview/cast"
    regex(%r{/installers/(.+)$}i)
    strategy :sparkle do |item|
      "#{item.short_version},#{item.url[regex, 1]}"
    end
  end

  auto_updates true

  app "MidiView.app"

  zap trash: [
    "~/Library/Application Support/MidiView",
    "~/Library/Preferences/com.hautetechnique.midiview.plist",
  ]
end
