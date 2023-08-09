cask "acronis-true-image" do
  version "2021"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dl.acronis.com/u/AcronisTrueImage#{version}.dmg"
  name "Acronis True Image"
  desc "Full image backup and cloning software"
  homepage "https://www.acronis.com/personal/computer-backup/"

  livecheck do
    url "https://www.acronis.com/en-us/support/updates/index.html"
    regex(/Acronis\s*True\s*Image\s*(\d+(?:\.\d+)*)/i)
  end

  pkg "Install Acronis True Image.pkg"

  uninstall pkgutil: "com.acronis.trueimageformac",
            delete:  "/Applications/Acronis True Image.app"
end
