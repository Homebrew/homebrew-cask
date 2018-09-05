cask 'odrive' do
  version '6344'
  sha256 'f6af36bfef76b9d6b5d192392f3d807d31f21320e7b80567131d4055c2ba7ab8'

  # downloads can be found at https://www.odrive.com/downloaddesktop
  # d3huse1s6vwzq6.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3huse1s6vwzq6.cloudfront.net/odrivesync.#{version}.dmg"
  name 'odrive'
  homepage 'https://www.odrive.com/'

  pkg "odrive.#{version}.pkg"

  uninstall pkgutil: 'com.oxygen.odrive.*'
end
