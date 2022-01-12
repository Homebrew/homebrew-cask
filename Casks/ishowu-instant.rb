cask "ishowu-instant" do
  version "1.4.8,1383"
  sha256 "897899b9691495d9c945d63d11ba6d7988a297c8913528e5ce5663eac0d18cee"

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
