cask "acronis-true-image" do
  version "41592"
  sha256 "304335d0e8e26bc46571e6926baf20da0f2d694f20a8728c7f220236d1ed29c2"

  url "https://dl.acronis.com/u/AcronisTrueImage_#{version}.dmg"
  name "Acronis True Image"
  desc "Full image backup and cloning software"
  homepage "https://www.acronis.com/products/true-image/"

  livecheck do
    url "https://www.acronis.com/en-us/support/updates/changes.html?p=42798"
    regex(/Build.*?>\s*v?(\d+(?:\.\d+)*)\s*</)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "Installer.pkg"

  uninstall pkgutil: "com.acronis.CyberProtectHomeOffice",
            delete:  "/Applications/Acronis True Image.app"
end
