cask 'stattransfer' do
  version '13'
  sha256 '2a5af41ee57a0300b11e2b1e62e613fcb582cb262b731b3f8facbed4b76a4b53'

  url 'https://www.stattransfer.com/downloads/stdemo.dmg'
  name 'Stat/Transfer'
  homepage 'https://stattransfer.com/'
  license :commercial

  pkg "st_installer_v#{version}.pkg"

  uninstall pkgutil: 'com.circlesys.pkg'
end
