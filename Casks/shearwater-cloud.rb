cask "shearwater-cloud" do
  version "2.9.1"
  sha256 "ef8c0b31d4c1b72255a659fc725ebc2ac627a290ed78642a1e9e38a87ed4f670"

  url "https://www.shearwater.com/wp-content/downloads/ShearwaterCloudInstaller_#{version}.dmg"
  name "Shearwater Cloud"
  desc "Review, edit and share dive log data"
  homepage "https://www.shearwater.com/"

  livecheck do
    url "https://www.shearwater.com/cloud/"
    regex(/href=.*?ShearwaterCloudInstaller[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Shearwater Cloud.app"

  zap trash: "~/Library/Containers/unity.Shearwater-Research.Shearwater"
end
