cask :v1 => 'fm-fw-installer' do
  version '1.2'
  sha256 'b62dc5208dd079c93bd191578e7aa4a1905eee970589c45e01b99f65ccca2ec3'

  url 'http://www.flymaster-avionics.com/LinkClick.aspx?fileticket=Udjm4iuMhL8%3d&tabid=199&mid=804&forcedownload=true'
  homepage 'http://www.flymaster-avionics.com/Support/Downloads/ForMacOSX/tabid/199/Default.aspx'
  license :unknown    # todo: improve this machine-generated value

  app 'Firmware Installer.app'
end
