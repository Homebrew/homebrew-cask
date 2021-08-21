cask "ishowu-instant" do
  version "1.4.8,1379"
  sha256 "653a5d0a16715f86bbe74e29d37b6a77d3cd0f5d2945eb6d94cb20349bb00128"

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
