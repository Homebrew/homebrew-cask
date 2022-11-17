cask "funter" do
  version "6.0.2,328"
  sha256 :no_check

  url "https://download.nektony.com/download/funter/Funter.dmg"
  name "Funter"
  desc "Shows hidden files and folders and switches their visibility in Finder"
  homepage "https://nektony.com/products/funter"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/funter/update/update.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "Funter #{version.major}.app"
end
