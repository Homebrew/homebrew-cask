cask "ishowu-instant" do
  version "1.4.17"
  sha256 "369815d9361f43182a19ffac97b7f6f70e7223738990674272b64d3c532f908a"

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
