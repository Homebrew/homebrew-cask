cask 'odrive' do
  version '5491'
  sha256 'd07bb9c99ca24ca31d439c1a285a778b0c6535cca36e2219b47b66ef78e3ea8b'

  # downloads can be found at https://www.odrive.com/downloaddesktop
  # d3huse1s6vwzq6.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3huse1s6vwzq6.cloudfront.net/odrivesync.#{version}.dmg"
  name 'odrive'
  homepage 'https://app.odrive.com/'
  license :gratis

  pkg "odrive.#{version}.pkg"

  uninstall pkgutil: 'com.oxygencloud.odrive.*'
end
