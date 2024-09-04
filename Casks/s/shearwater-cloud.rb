cask "shearwater-cloud" do
  version "2.11.8"
  sha256 "258887c87c4ee587c9799b5a8d0a602cb381d6b456a3111f3c97e2efcc77bc26"

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
