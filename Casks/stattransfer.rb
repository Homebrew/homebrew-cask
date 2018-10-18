cask 'stattransfer' do
  version :latest
  sha256 :no_check

  url 'https://www.stattransfer.com/downloads/stdemo.dmg'
  name 'Stat/Transfer'
  homepage 'https://stattransfer.com/'

  pkg "st_installer#{version}.pkg"

  uninstall pkgutil: "com.circlesys.v#{version}.pkg"
end
