cask "ishowu-instant" do
  version "1.4.19"
  sha256 "f84e0769eaa885c192478808ca479324187ee6b47d5b4731c29994a46ff25239"

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version}.dmg"
  name "iShowU Instant"
  desc "Realtime screen recording"
  homepage "https://www.shinywhitebox.com/ishowu-instant"

  livecheck do
    url "https://www.shinywhitebox.com/store/appcast.php?p=14"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "iShowU Instant.app"

  zap trash: [
    "~/Library/Application Support/iShowU Instant",
    "~/Library/Application Support/iShowU Studio",
    "~/Library/Caches/com.shinywhitebox.iShowU-Instant",
    "~/Library/HTTPStorages/com.shinywhitebox.iShowU-Instant",
    "~/Library/HTTPStorages/com.shinywhitebox.iShowU-Instant.binarycookies",
    "~/Library/Preferences/com.shinywhitebox.iShowU-Instant.plist",
    "~/Library/Saved Application State/com.shinywhitebox.iShowU-Instant.savedState",
    "~/Library/WebKit/com.shinywhitebox.iShowU-Instant",
  ]
end
