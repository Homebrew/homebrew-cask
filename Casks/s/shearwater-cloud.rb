cask "shearwater-cloud" do
  version "2.12.0"
  sha256 "446ee7c37871acbf2efdb6e4c5996a73ffd4a906b1d532d7a239df2233b27d17"

  url "https://downloads.shearwater.com/livedownloads/ShearwaterCloudInstaller_#{version}.dmg"
  name "Shearwater Cloud"
  desc "Review, edit and share dive log data"
  homepage "https://shearwater.com/"

  livecheck do
    url "https://shearwater.com/pages/shearwater-cloud"
    regex(/href=.*?ShearwaterCloudInstaller[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Shearwater Cloud.app"

  zap trash: "~/Library/Containers/unity.Shearwater-Research.Shearwater"

  caveats do
    requires_rosetta
  end
end
