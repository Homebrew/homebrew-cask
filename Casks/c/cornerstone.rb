cask "cornerstone" do
  version "4.2"
  sha256 "c18a4ac6d21e3908942d438e23cfbf31635ad268d638960ca7862680aca4247a"

  url "https://cornerstone.assembla.com/downloads/Cornerstone-#{version}.zip"
  name "Cornerstone"
  desc "Subversion client"
  homepage "https://cornerstone.assembla.com/"

  livecheck do
    url :homepage
    regex(/href=.*?Cornerstone[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :mojave"

  app "Cornerstone.app"

  zap trash: [
    "~/Library/Application Scripts/com.zennaware.Cornerstone*",
    "~/Library/Caches/com.apple.helpd/Generated/Cornerstone Help*",
    "~/Library/Containers/com.zennaware.Cornerstone*",
  ]

  caveats do
    requires_rosetta
  end
end
