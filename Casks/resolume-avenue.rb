cask 'resolume-avenue' do
  version '5.0.4'
  sha256 '44e668b89916d7a27498c269ee165a6796b78860f23f7815098fcb9e506aa2df'

  # d19j6z4lvv1vde.cloudfront.net was verified as official when first introduced to the cask
  url "https://d19j6z4lvv1vde.cloudfront.net/Resolume_Arena_#{version.dots_to_underscores}_Installer.dmg"
  name 'Resolume Avenue'
  homepage 'https://resolume.com'

  pkg "Resolume Avenue #{version} Installer.pkg"

  uninstall pkgutil: 'com.resolume.*'
end
