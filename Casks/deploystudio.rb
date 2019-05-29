cask 'deploystudio' do
  version '1.7.9'
  sha256 '4b4cb0b1517eec001fe74d981341956bc4696f415a426e1aabab66b1a9b1b8ab'

  url "http://www.deploystudio.com/Downloads/DeployStudioServer_v#{version}.dmg"
  name 'DeployStudio Server'
  homepage 'http://www.deploystudio.com/'

  pkg "DeployStudioServer_v#{version}.pkg"

  uninstall delete:    [
                         '/Applications/Utilities/DeployStudio Admin.app',
                         '/Applications/Utilities/DeployStudio Assistant.app',
                         '/Applications/Utilities/DeployStudio Runtime.app',
                       ],
            launchctl: 'com.deploystudio.server',
            pkgutil:   'com.deploystudio.*'
end
