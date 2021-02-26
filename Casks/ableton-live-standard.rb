cask "ableton-live-standard" do
  version "11.0"
  sha256 "736b80d967db98dda5c4a897157f0e96c6d23a9879cae0348e13cab789016a37"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name "Ableton Live Standard"
  homepage "https://www.ableton.com/en/live/"

  auto_updates true

  app "Ableton Live #{version.major} Standard.app"

  zap trash: "~/Library/*/*[Aa]bleton*",
      rmdir: "~/Music/Ableton/Factory Packs"
end
