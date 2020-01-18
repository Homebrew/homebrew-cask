cask 'fl-studio' do
  version '20.6.1.848'
  sha256 'f8e16c6f3f0ec935d71f6d7fd2d33fe1dde52d883354f4b67aa41f018c0b134d'

  url "http://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://support.image-line.com/redirect/flstudio20_mac_installer'
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
