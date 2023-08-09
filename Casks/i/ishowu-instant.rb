cask "ishowu-instant" do
  version "1.4.14"
  sha256 "a3d1bf98d395168c636f2fef8da4fded84386a11e7de9443fa36572064448948"

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
