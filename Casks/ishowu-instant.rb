cask "ishowu-instant" do
  version "1.4.10,1405"
  sha256 "758c812bbc8ed09427de1c4c91501d954b541eb2fedb3902c5e42d79a510a735"

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
