cask "handbrake-app" do
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.9.2"
  sha256 "61a57c53311a0ca23e58367f512134af99428c14ac3a62665f245fc5e46c3791"

  url "https://handbrake.fr/rotation.php?file=HandBrake-#{version}.dmg&update=true"
  name "HandBrake"
  desc "Open-source video transcoder"
  homepage "https://handbrake.fr/"

  livecheck do
    url "https://handbrake.fr/appcast.#{livecheck_arch}.xml"
    strategy :sparkle, &:short_version
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
