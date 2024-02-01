cask "shearwater-cloud" do
  version "2.11.1"
  sha256 "25bc8014879f1a952d45a5a33fc597c58f1bde33f29409b163d0840d09577f35"

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
