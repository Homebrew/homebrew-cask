cask "ishowu-instant" do
  version "1.4.18"
  sha256 "9d6913ae841b868f4a6a3aa416b1b72d1fa2098f601381a7df909b8ac21afe72"

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
