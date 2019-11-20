cask 'cellery' do
  version '0.5.0'
  sha256 '4cfe7329aca40edad0776304eba1245da53f337fb10f8ed013f33967ec742fef'

  # github.com/wso2-cellery/sdk was verified as official when first introduced to the cask
  url "https://github.com/wso2-cellery/sdk/releases/download/v#{version}/cellery-macos-installer-x64-#{version}.pkg"
  appcast 'github.com/wso2-cellery/sdk/releases.atom'
  name 'Cellery'
  homepage 'https://wso2-cellery.github.io/'

  depends_on cask: 'osxfuse'
  depends_on formula: 'python'
  depends_on formula: 'torsocks'
  depends_on formula: 'sshfs'

  pkg "cellery-macos-installer-x64-#{version}.pkg"

  uninstall pkgutil: 'org.cellery.*'
end
