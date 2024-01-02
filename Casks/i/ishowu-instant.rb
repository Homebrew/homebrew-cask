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

  depends_on macos: ">= :mojave"

  app "iShowU Instant.app"
end
