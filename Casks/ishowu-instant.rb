cask "ishowu-instant" do
  version "1.4.0"
  sha256 "eaa255cd315bb81323da017ec166850f0b08510c257808997eae1a077e6c6dd5"

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version}.dmg"
  appcast "https://www.shinywhitebox.com/store/appcast.php?p=14"
  name "iShowU Instant"
  homepage "https://www.shinywhitebox.com/ishowu-instant"

  depends_on macos: ">= :mojave"

  app "iShowU Instant.app"
end
