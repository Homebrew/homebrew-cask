cask "ishowu-instant" do
  version "1.4.2"
  sha256 "c151aa4fd6d2ff230f3ef1f377780f2bc21b6207d8546ab40d9c98eda5dda1d1"

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version}.dmg"
  appcast "https://www.shinywhitebox.com/store/appcast.php?p=14"
  name "iShowU Instant"
  homepage "https://www.shinywhitebox.com/ishowu-instant"

  depends_on macos: ">= :mojave"

  app "iShowU Instant.app"
end
