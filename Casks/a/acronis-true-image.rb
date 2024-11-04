cask "acronis-true-image" do
  version "41592"
  sha256 "304335d0e8e26bc46571e6926baf20da0f2d694f20a8728c7f220236d1ed29c2"

  url "https://dl.acronis.com/u/AcronisTrueImage_#{version}.dmg"
  name "Acronis True Image"
  desc "Full image backup and cloning software"
  homepage "https://www.acronis.com/products/true-image/"

  livecheck do
    url "https://www.acronis.com/en-us/support/updates/changes.html?p=42798"
    regex(%r{<span class="build">Build</span><span class="build-number"> (.+?)</span>})
  end

  auto_updates true
  depends_on macos: ">= :big_sur"
  depends_on cask: "acronis-true-image-cleanup-tool"

  pkg "Installer.pkg"

  uninstall pkgutil: "com.acronis.CyberProtectHomeOffice",
            delete:  "/Applications/Acronis True Image.app"

  zap script: {
    executable: "#{HOMEBREW_PREFIX}/lib/acronis-true-image/cleanup_tool",
    sudo:       true,
  }
end
