cask "ableton-live-standard" do
  version "10.1.25"
  sha256 "03a4786cdb16a9d01d4e8701f1bba20d32a4b761b2bdaf1399ea54ffa7cbce3a"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name "Ableton Live Standard"
  homepage "https://www.ableton.com/en/live/"

  auto_updates true

  app "Ableton Live #{version.major} Standard.app"

  zap trash: "~/Library/*/*[Aa]bleton*",
      rmdir: "~/Music/Ableton/Factory Packs"
end
