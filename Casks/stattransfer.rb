cask 'stattransfer' do
  version '13'
  sha256 'a4a4372982fba0ebb4896b30d6bd51abf740ceda0bcf17f3603cc8843b2222dc'

  url 'https://www.stattransfer.com/downloads/stdemo.dmg'
  name 'Stat/Transfer'
  homepage 'https://stattransfer.com/'

  pkg "st_installer_v#{version}.pkg"

  uninstall pkgutil: 'com.circlesys.pkg'
end
