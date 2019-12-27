cask 'fl-studio' do
  version '20.6.0.793'
  sha256 'c6756dc5a15eee40d6a490345cb4cb71ded3febeb4113a4cf64d867a277d149d'

  url "http://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://support.image-line.com/redirect/flstudio20_mac_installer'
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
