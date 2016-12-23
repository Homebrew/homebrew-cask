cask 'scansnap-manager' do
  version '6.3L50'
  sha256 'ea694ec0746cc0269790ec8cbe76f96e514fccc48f83501613f853c6352ecfee'

  # origin.pfultd.com/downloads was verified as official when first introduced to the cask
  url "http://origin.pfultd.com/downloads/IMAGE/driver/ss/mgr/m-s1300i/MacS1300iManagerV#{version.no_dots}WW1.dmg"
  name 'ScanSnap Manager for Mac'
  homepage 'https://www.fujitsu.com/global/support/products/computing/peripheral/scanners/scansnap/software/s1300im-setup.html'

  pkg 'ScanSnap Manager.pkg'

  uninstall pkgutil: "jp.co.pfu.ScanSnapV#{version.no_dots}WW"
end
