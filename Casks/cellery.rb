cask 'cellery' do
  version '0.4.0'
  sha256 'c0877840a975ead887edac9fb4a602c9a0317fcd51b7a15375cbc32183343c4c'

  # product-dist.cellery.io was verified as official when first introduced to the cask
  url 'https://product-dist.cellery.io/downloads/0.4.0/cellery-macos-installer-x64-0.4.0.pkg'
  name 'Cellery'
  homepage 'https://wso2-cellery.github.io/'

  depends_on cask: 'osxfuse'
  depends_on formula: 'python'
  depends_on formula: 'torsocks'
  depends_on formula: 'sshfs'

  pkg 'cellery-macos-installer-x64-0.4.0.pkg'

  uninstall pkgutil: 'org.cellery.*'
end
