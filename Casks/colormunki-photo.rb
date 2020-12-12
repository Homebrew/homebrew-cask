cask "colormunki-photo" do
  version :latest
  sha256 :no_check

  url "https://xritephoto.com/downloader.aspx?FileID=1809&Type=M&returnurl=%2fph_product_overview.aspx%3fID%3d1115%26Action%3dSupport%26SoftwareID%3d1809%26catid%3d149"
  name "ColorMunki Photo"
  homepage "https://xritephoto.com/ph_product_overview.aspx?ID=1115"

  pkg "ColorMunki Photo.pkg"

  uninstall pkgutil: "com.xrite.colormunkiphoto.colormunkiPhoto.*"

  caveats do
    reboot
  end
end
