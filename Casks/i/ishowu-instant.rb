cask "ishowu-instant" do
  version "1.4.16"
  sha256 "f21f95745a843c2cfaa17e2e0dada3bbd3b5a6ae8c181af3bb799f0d09e887eb"

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
