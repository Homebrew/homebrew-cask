cask "ishowu-instant" do
  version "1.4.4,1257"
  sha256 "b166097006dc3e309a7e27981b57c979291587f254785e9e2ed33b8c313a6dbe"

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
