cask 'odrive' do
  version '6733'
  sha256 '6b0525ec9754e67fd89555574e71740c9d1fea33869298f2c7bfb5a508e0481f'

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
