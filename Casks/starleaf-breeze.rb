cask 'starleaf-breeze' do
  version :latest
  sha256 :no_check

  url 'https://dl.starleaf.com/breeze_downloads/StarLeaf-Breeze-Installer-Mac-OS.pkg'
  name 'Starleaf Breeze'
  homepage 'https://www.starleaf.com/'

  auto_updates true

  pkg 'StarLeaf-Breeze-Installer-Mac-OS.pkg'

  uninstall pkgutil: 'com.starleaf.breeze.mac'
end
