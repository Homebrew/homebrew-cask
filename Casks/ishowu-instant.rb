cask "ishowu-instant" do
  version "1.4.2"
  sha256 "fabe0f178a73cd86482a3f9613f088f9d253db18b2e02ecb8cd7bdbf1e2dcbee"

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version}.dmg"
  appcast "https://www.shinywhitebox.com/store/appcast.php?p=14"
  name "iShowU Instant"
  homepage "https://www.shinywhitebox.com/ishowu-instant"

  depends_on macos: ">= :mojave"

  app "iShowU Instant.app"
end
