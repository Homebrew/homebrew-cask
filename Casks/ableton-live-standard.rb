cask "ableton-live-standard" do
  version "10.1.17"
  sha256 "1c8220c39196fd3358d4e8196e0b399a6b36315eaf348dab9b548eb7365eba0f"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name "Ableton Live Standard"
  homepage "https://www.ableton.com/en/live/"

  auto_updates true

  app "Ableton Live #{version.major} Standard.app"

  zap trash: "~/Library/*/*[Aa]bleton*",
      rmdir: "~/Music/Ableton/Factory Packs"
end
