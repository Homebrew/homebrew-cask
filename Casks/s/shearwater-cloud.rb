cask "shearwater-cloud" do
  version "2.11.6"
  sha256 "6f93ceac39fc4ff17f7fe174ef8670c65f4a1cd1eb30259cdaad8f82142a3dec"

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
