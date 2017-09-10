cask 'odrive' do
  version '6306'
  sha256 'e3b5287a8a0c1d61f3cbcf9af2ebb6c7ea7ab08d08b1f5c433a9474a4ff10a59'

  # downloads can be found at https://www.odrive.com/downloaddesktop
  # d3huse1s6vwzq6.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3huse1s6vwzq6.cloudfront.net/odrivesync.#{version}.dmg"
  name 'odrive'
  homepage 'https://www.odrive.com/'

  pkg "odrive.#{version}.pkg"

  uninstall pkgutil: 'com.oxygen.odrive.*'
end
