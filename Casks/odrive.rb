cask 'odrive' do
  version '6677'
  sha256 '1289a0c7d8abeeb85270419b9f6eb156583455447620a2da5863443918af342a'

  # downloads can be found at https://www.odrive.com/downloaddesktop
  # d3huse1s6vwzq6.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d3huse1s6vwzq6.cloudfront.net/odrivesync.#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.odrive.com/downloaddesktop?platform=mac'
  name 'odrive'
  homepage 'https://www.odrive.com/'

  pkg "odrive.#{version}.pkg"

  uninstall quit:    'com.oxygencloud.odrive',
            pkgutil: 'com.oxygen.odrive.*'
end
