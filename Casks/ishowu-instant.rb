cask "ishowu-instant" do
  version "1.4.11,1409"
  sha256 "84feb760d709c728dd9f2da7f75d4e9fb84d34190f09f866155cdddd0fb39215"

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
