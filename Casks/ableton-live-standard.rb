cask "ableton-live-standard" do
  version "10.1.18"
  sha256 "229150ce6ac5328595678cdbbe57f0bc0c20c1b609c9287caa82f2ff534150ac"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name "Ableton Live Standard"
  homepage "https://www.ableton.com/en/live/"

  auto_updates true

  app "Ableton Live #{version.major} Standard.app"

  zap trash: "~/Library/*/*[Aa]bleton*",
      rmdir: "~/Music/Ableton/Factory Packs"
end
