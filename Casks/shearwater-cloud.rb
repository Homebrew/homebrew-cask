cask "shearwater-cloud" do
  version "2.9.3"
  sha256 "d1a1543285c0821702bc2d8862cefeefeaa5af156720525a61d97f7a4b0828cc"

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
