cask 'colormunki-photo' do
  version '1.2.1'
  sha256 'a6cd759b203adc66a78b18e62e3a01ec46ab7e6fae43d878d9bf83949a97535c'

  url 'http://xritephoto.com/downloader.aspx?FileID=1500&Type=M&returnurl=%2fph_product_overview.aspx%3fID%3d1115%26Action%3dSupport%26SoftwareID%3d1500%26catid%3d149'
  name 'ColorMunki Photo'
  homepage 'http://xritephoto.com/ph_product_overview.aspx?ID=1115&Action=Support&SoftwareID=1500&catid=149'
  license :commercial

  pkg 'ColorMunki Photo.pkg'

  uninstall pkgutil: 'com.xrite.colormunkiphoto.colormunkiPhoto.*'

  caveats do
    reboot
  end
end
