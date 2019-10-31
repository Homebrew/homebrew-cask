cask 'cellery' do
  version '0.4.0'
  sha256 'c0877840a975ead887edac9fb4a602c9a0317fcd51b7a15375cbc32183343c4c'

  # github.com/wso2-cellery/sdk was verified as official when first introduced to the cask
  url "https://github.com/wso2-cellery/sdk/releases/download/v#{version}/cellery-macos-installer-x64-#{version}.pkg"
  appcast 'github.com/wso2-cellery/sdk/releases.atom'
  name 'Cellery'
  homepage 'https://wso2-cellery.github.io/'

  depends_on formula: 'python'
  depends_on formula: 'torsocks'

  pkg "cellery-macos-installer-x64-#{version}.pkg"

  uninstall pkgutil: 'org.cellery.*'
end
