cask "ishowu-instant" do
  version "1.4.12,1422"
  sha256 "27210dba96fdc912f994bd960d345aeab1e5fc8a58dfacdb5e9a236da7c1513a"

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
