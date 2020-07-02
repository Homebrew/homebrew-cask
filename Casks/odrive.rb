cask 'odrive' do
  version '6721'
  sha256 'a29afb776a04c4cdaf102e9d1b1a4f3b57fe998ccdd148fa2ba4733b5fd472b6'

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
