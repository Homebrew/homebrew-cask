cask 'stattransfer' do
  version '13'
  sha256 '66c223a0f194e4ff566d73cea1210dd378b52e696f75dd72fd6b3a18ccc8b20a'

  url 'https://www.stattransfer.com/downloads/stdemo.dmg'
  name 'Stat/Transfer'
  homepage 'https://stattransfer.com/'

  pkg "st_installer_v#{version}.pkg"

  uninstall pkgutil: 'com.circlesys.pkg'
end
