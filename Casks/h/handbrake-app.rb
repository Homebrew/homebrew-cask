cask "handbrake-app" do
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.10.1"
  sha256 "bf04b330d7773bec47886cc16c0c5bdfefcfd7edcb83955eaae0aac2679a7883"

  url "https://handbrake.fr/rotation.php?file=HandBrake-#{version}.dmg&update=true"
  name "HandBrake"
  desc "Open-source video transcoder"
  homepage "https://handbrake.fr/"

  livecheck do
    url "https://handbrake.fr/appcast.#{livecheck_arch}.xml"
    strategy :sparkle do |item|
      item.short_version.split.first
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "HandBrake.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.handbrake.handbrake.sfl*",
    "~/Library/Application Support/HandBrake",
    "~/Library/Caches/fr.handbrake.HandBrake",
    "~/Library/Preferences/fr.handbrake.HandBrake.plist",
    "~/Library/Saved Application State/fr.handbrake.HandBrake.savedState",
  ]
end
