cask "ninja-download-manager-ndm" do
  version "46"
  sha256 "d1f377c48c51b4517cfc8e5524c3b353ce6fba81a63ac2c6ae4d2820d67bb0be"

  url "https://ninjadownloadmanager.com/downloads/ndm_#{version}.pkg"
  name "Ninja Download Manager"
  homepage "https://ninjadownloadmanager.com/"

  pkg "ndm_#{version}.pkg"

  uninstall pkgutil: "com.knockoutsoft.pkg.ndm"

  zap trash: [
    "~/Library/ndm",
    "~/Library/Caches/com.knockoutsoft.ndm",
    "~/Library/Saved Application State/com.knockoutsoft.ndm.savedState",
  ]
end
