cask "cornerstone" do
  version "4.2"
  sha256 "c18a4ac6d21e3908942d438e23cfbf31635ad268d638960ca7862680aca4247a"

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast "https://cornerstone.assembla.com/blog/"
  name "Cornerstone"
  homepage "https://www.zennaware.com/cornerstone/"

  depends_on macos: ">= :mojave"

  app "Cornerstone.app"
end
