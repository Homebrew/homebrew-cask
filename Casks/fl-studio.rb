cask 'fl-studio' do
  version '20.7.1.1114'
  sha256 '452f6f12556145390b6d46af0824401987e1a543a95708c57aa5d634e283967d'

  url "http://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://support.image-line.com/redirect/flstudio20_mac_installer'
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
