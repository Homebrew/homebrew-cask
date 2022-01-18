cask "shearwater-cloud" do
  version "2.8.2"
  sha256 "f9a4b3a9ee1dc1f74b31355bc025c77c14e738fdc96c1881564bf0e48e488d69"

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
