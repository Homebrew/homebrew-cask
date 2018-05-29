cask 'eagle' do
  version '9.0.1'
  sha256 '7b3eff937b72e34c375e07593e18bd22b09070d2eb8b3b711c20e3d171484a4e'

  url "https://eagle-updates.circuits.io/downloads/#{version.dots_to_underscores}/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name 'Autodesk EAGLE'
  homepage 'https://circuits.io/'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
