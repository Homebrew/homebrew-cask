cask 'odrive' do
  version '6701'
  sha256 '31754dfd7c732cab256eb32b26e322df10e66f1c019973ee6020dba635072374'

  # downloads can be found at https://www.odrive.com/downloaddesktop
  # d3huse1s6vwzq6.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d3huse1s6vwzq6.cloudfront.net/odrivesync.#{version}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.odrive.com/downloaddesktop?platform=mac'
  name 'odrive'
  homepage 'https://www.odrive.com/'

  pkg "odrivesync.#{version}.pkg"

  uninstall quit:    'com.oxygencloud.odrive',
            pkgutil: 'com.oxygen.odrive.*'
end
