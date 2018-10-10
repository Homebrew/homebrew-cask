cask 'stattransfer' do
  version '14'
  sha256 'b4d40db39f2ddae23622336771b0dfb27e874ba885320d2fe75482783342bfe6'

  url 'https://www.stattransfer.com/downloads/stdemo.dmg'
  name 'Stat/Transfer'
  homepage 'https://stattransfer.com/'

  pkg "st_installer#{version}.pkg"

  uninstall pkgutil: "com.circlesys.v#{version}.pkg"
end
