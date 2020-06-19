cask 'fl-studio' do
  version '20.7.1'
  sha256 '826b4d11fa6b560bdf11fb2aaab201ce3ae1db7533f4a03cf6e4b48f84f68d04'

  url "http://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://support.image-line.com/redirect/flstudio20_mac_installer'
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
