cask 'stattransfer' do
  version '14'
  sha256 :no_check # required as upstream package is updated in-place

  url 'https://www.stattransfer.com/downloads/stdemo.dmg'
  name 'Stat/Transfer'
  homepage 'https://stattransfer.com/'

  pkg "st_installer#{version}.pkg"

  uninstall pkgutil: "com.circlesys.v#{version}.pkg"
end
