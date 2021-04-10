cask "acronis-true-image" do
  version "2021"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dl.acronis.com/u/AcronisTrueImage#{version}.dmg"
  name "Acronis True Image"
  desc "Full Image Backup & Cloning software"
  homepage "https://www.acronis.com/personal/computer-backup/"

  livecheck do
    url "https://www.acronis.com/en-us/support/updates/index.html"
    strategy :page_match
    regex(%r{href=.*?/AcronisTrueImage(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Acronis True Image.app"
end
