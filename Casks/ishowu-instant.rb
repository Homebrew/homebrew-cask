cask "ishowu-instant" do
  version "1.4.7,1375"
  sha256 "2b5303d61e8c0806f574e16aca50678e7521fc7d383755fa581ea8f5256e8dda"

  url "https://www.shinywhitebox.com/downloads/instant/iShowU_Instant_#{version.before_comma}.dmg"
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
