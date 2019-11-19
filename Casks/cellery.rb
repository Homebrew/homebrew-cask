cask 'cellery' do
  version '0.5.0'
  sha256 '1a93a344a0e5596ff8b39f16153619740188f21c9feacf3ab476d8f736950b57'

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
