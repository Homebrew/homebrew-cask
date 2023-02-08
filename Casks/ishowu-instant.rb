cask "ishowu-instant" do
  version "1.4.13,1427"
  sha256 "c4ba92e5e8ac61e089679361cef2af1bd31ee275d5b78f9afd133491ea02e37c"

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version.csv.first}.dmg"
  name "iShowU Instant"
  desc "Realtime screen recording"
  homepage "https://www.shinywhitebox.com/ishowu-instant"

  livecheck do
    url "https://www.shinywhitebox.com/store/appcast.php?p=14"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "iShowU Instant.app"
end
