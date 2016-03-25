cask 'odrive' do
  version '5091'
  sha256 'a44fea98d387ae0e917703446baa35eea5da5022d49e6cd9fd4307ba8f709cbb'

  # downloads can be found at https://www.odrive.com/downloaddesktop
  # d3huse1s6vwzq6.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3huse1s6vwzq6.cloudfront.net/odrivesync.#{version}.dmg"
  name 'odrive'
  homepage 'https://app.odrive.com/'
  license :gratis

  pkg "odrive.#{version}.pkg"

  uninstall pkgutil: 'com.oxygencloud.odrive.*'
end
