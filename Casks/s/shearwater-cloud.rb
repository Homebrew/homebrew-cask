cask "shearwater-cloud" do
  version "2.11.4"
  sha256 "be3a0b10e438642954d2397a94beb2d712c9ec409305046898d787d235e7b66c"

  url "https://downloads.shearwater.com/livedownloads/ShearwaterCloudInstaller_#{version}.dmg"
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
