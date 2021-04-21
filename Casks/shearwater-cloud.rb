cask "shearwater-cloud" do
  version "2.6.2"
  sha256 "200ab24b520c385c2bfd6abcf5a3a6cca1f45799e6ab84152adaaf727bf9afcf"

  url "https://www.shearwater.com/wp-content/downloads/ShearwaterCloudInstaller_#{version}.dmg"
  name "Shearwater Cloud"
  desc "Review, edit and share dive log data"
  homepage "https://www.shearwater.com/"

  app "Shearwater Cloud.app"

  zap trash: "~/Library/Containers/unity.Shearwater-Research.Shearwater"
end
