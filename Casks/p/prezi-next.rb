cask "prezi-next" do
  version "1.63.0"
  sha256 "6fa4e5858881d8bd8b8258129ad7f50f5d03471666b154bdcfe0fd799b671683"

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version}.dmg"
  name "Prezi Next"
  desc "Presentation software"
  homepage "https://prezi.com/"

  livecheck do
    url "https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "Prezi Next.app"

  zap trash: [
    "~/Library/Application Support/com.prezi.pitch.desktop",
    "~/Library/Caches/com.prezi.pitch.desktop",
    "~/Library/HTTPStorages/com.prezi.pitch.desktop",
    "~/Library/Logs/Prezi Next",
    "~/Library/Logs/Prezi Next_debug.log",
    "~/Library/Preferences/com.prezi.pitch.desktop.plist",
    "~/Library/Saved Application State/com.prezi.pitch.desktop.savedState",
  ]
end
