cask :v1 => 'colorport' do
  version '2.0.5'
  sha256 'ae176e3118ba55b4dd8a0716707d149a4e13827b30cdc3f1d29bc329a0ef4bd0'

  url 'http://www.xrite.com/downloader.aspx?FileID=1168&Type=M&returnurl=%2fcolorport-utility-software%2fsupport%2fd1168'
  name 'ColorPort Utility Software'
  homepage 'https://www.xrite.com/colorport-utility-software/support/d1168'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "ColorPort#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}Distribution.mpkg"

  uninstall :pkgutil => 'com.xrite.colorport'

  caveats do
    discontinued
    reboot
  end
end
