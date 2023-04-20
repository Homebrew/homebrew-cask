cask "prezi-next" do
  version "1.62.1"
  sha256 "d693ce18fc2bb1cf8bed4642fc5c88a91331d375f0954847435eb89f28a49e52"

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version}.dmg"
  name "Prezi Next"
  desc "Presentation software"
  homepage "https://prezi.com/"

  livecheck do
    url "https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :el_capitan"

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
