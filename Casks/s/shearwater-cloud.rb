cask "shearwater-cloud" do
  version "2.11.7"
  sha256 "8fcb1cf62e954c090e577bebcf859963dc06a36842426185cb3de5c3ce4fc065"

  url "https://downloads.shearwater.com/livedownloads/ShearwaterCloudInstaller_#{version}.dmg"
  name "Shearwater Cloud"
  desc "Review, edit and share dive log data"
  homepage "https://shearwater.com/"

  livecheck do
    url "https://shearwater.com/pages/shearwater-cloud"
    regex(/href=.*?ShearwaterCloudInstaller[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Shearwater Cloud.app"

  zap trash: "~/Library/Containers/unity.Shearwater-Research.Shearwater"
end
