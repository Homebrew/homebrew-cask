cask "shearwater-cloud" do
  version "2.12.2"
  sha256 "ce87649f0182dc0237efe1078fc7151f1e0114c7b02fc6f8faf1c4787917ebc8"

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
