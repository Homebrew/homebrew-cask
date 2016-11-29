cask 'brainworx-bxmegasingle' do
  version '1.3'
  sha256 '92b6393ec946840cccfe3cfe06318629c3a467d608f67480bef7ebc272ba1071'

  url "https://cdn.plugin-alliance.com/tl_files/products/installer/bx_megasingle_mac_#{version.dots_to_underscores}.zip"
  name 'Brainworx bx_megasingle'
  homepage 'https://www.plugin-alliance.com/en/products/bx_megasingle.html'

  pkg 'bx_megasingle.pkg'

  uninstall pkgutil: 'com.plugin-alliance.plugins.pkg.BXMegasingle*'
end
