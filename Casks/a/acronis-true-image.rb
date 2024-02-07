cask "acronis-true-image" do
  version "2021"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dl.acronis.com/u/AcronisTrueImage#{version}.dmg"
  name "Acronis True Image"
  desc "Full image backup and cloning software"
  homepage "https://www.acronis.com/personal/computer-backup/"

  deprecate! date: "2024-02-07", because: :discontinued

  pkg "Install Acronis True Image.pkg"

  uninstall pkgutil: "com.acronis.trueimageformac",
            delete:  "/Applications/Acronis True Image.app"
end
