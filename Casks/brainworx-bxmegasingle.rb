cask 'brainworx-bxmegasingle' do
  version '1.3.1'
  sha256 '693d13c932dfad28907d5bee0678cf8c4f1424986dbb2ef33cc8e0ba9131c4a6'

  url "https://cdn.plugin-alliance.com/tl_files/products/installer/bx_megasingle_mac_#{version.dots_to_underscores}.zip"
  name 'Brainworx bx_megasingle'
  homepage 'https://www.plugin-alliance.com/en/products/bx_megasingle.html'

  pkg 'bx_megasingle.pkg'

  uninstall pkgutil: 'com.plugin-alliance.plugins.pkg.BXMegasingle*'
end
