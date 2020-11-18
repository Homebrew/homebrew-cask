cask "avast-secure-browser" do
  version :latest
  sha256 :no_check

  # cdn-download.avastbrowser.com was verified as official when first introduced to the cask
  url "https://cdn-download.avastbrowser.com/AvastSecureBrowserSetup.pkg?cid=6302"
  name "Avast Secure Browser"
  desc "Private browser that’s up to 4x faster"
  homepage "https://platform.avast.com/ASB/Sync2/"

  pkg "AvastSecureBrowserSetup.pkg"

  uninstall pkgutil: "com.avast.browser"
end
