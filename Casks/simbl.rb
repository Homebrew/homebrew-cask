cask 'simbl' do
  version '0.9.9'
  sha256 'b6927b5e24520b379156c70431a64c1b444f65892fa2da71a9f1b6d57b1673da'

  url "http://www.culater.net/dl/files/SIMBL-#{version}.zip"
  appcast 'http://www.culater.net/software/SIMBL/SIMBL.php',
          checkpoint: 'fed90cb3904e03b0cba8d4f4869d9074e7954ce703c46404fc1a075124a4b468'
  name 'SIMBL'
  homepage 'http://www.culater.net/software/SIMBL/SIMBL.php/'

  pkg "SIMBL-#{version}/SIMBL-#{version}.pkg"

  uninstall launchctl: 'net.culater.SIMBL.Agent',
            pkgutil:   'net.culater.simbl.SIMBL.pkg'
end
