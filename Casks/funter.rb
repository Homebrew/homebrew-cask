cask "funter" do
  version "6.0.3"
  sha256 :no_check

  url "https://download.nektony.com/download/funter/Funter.dmg"
  name "Funter"
  desc "Shows hidden files and folders and switches their visibility in Finder"
  homepage "https://nektony.com/products/funter"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/funter/update/update.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "Funter #{version.major}.app"
end
