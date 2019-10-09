cask 'odrive' do
  version '6547'
  sha256 'acae8fba772f512295c3433ca07c59facd21466c10a0b7411dc6baeb1ea13b3f'

  # downloads can be found at https://www.odrive.com/downloaddesktop
  # d3huse1s6vwzq6.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3huse1s6vwzq6.cloudfront.net/odrivesync.#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.odrive.com/downloaddesktop?platform=mac'
  name 'odrive'
  homepage 'https://www.odrive.com/'

  pkg "odrive.#{version}.pkg"

  uninstall quit:    'com.oxygencloud.odrive',
            pkgutil: 'com.oxygen.odrive.*'
end
