cask "ishowu-instant" do
  version "1.4.20"
  sha256 "bb622ac4eab39223b289bc29f7a33965c3d88a7bc5cbe62528a61298ced2108c"

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
