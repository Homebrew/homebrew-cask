cask "ishowu-instant" do
  version "1.4.1"
  sha256 "2ab326182ec95f7a76387d2c206b7c6ee46eaeaae51962660709935f2177788c"

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version}.dmg"
  appcast "https://www.shinywhitebox.com/store/appcast.php?p=14"
  name "iShowU Instant"
  homepage "https://www.shinywhitebox.com/ishowu-instant"

  depends_on macos: ">= :mojave"

  app "iShowU Instant.app"
end
