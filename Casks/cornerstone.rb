cask "cornerstone" do
  version "4.2"
  sha256 "c18a4ac6d21e3908942d438e23cfbf31635ad268d638960ca7862680aca4247a"

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  name "Cornerstone"
  homepage "https://www.zennaware.com/cornerstone/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/Cornerstone-(\d+(?:\.\d+)*)\.zip}i)
  end

  depends_on macos: ">= :mojave"

  app "Cornerstone.app"
end
