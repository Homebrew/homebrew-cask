cask "ishowu-instant" do
  version "1.4.5,1342"
  sha256 "d435433dad736cc49e341372a232160d1b6f84d28b1cc02ad17ac39433395501"

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
