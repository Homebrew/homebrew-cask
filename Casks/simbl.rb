cask 'simbl' do
  if MacOS.version <= :leopard
    version '0.8.2'
    sha256 'eeb0934e1ed9d3187cd0c60b0dbcab34e2cea068647a1a5076f38cc90f0ee878'

    url "http://www.culater.net/dl/files/SIMBL-#{version}.tbz"
    pkg "SIMBL-#{version}/SIMBL.pkg"
  else
    version '0.9.9'
    sha256 'b6927b5e24520b379156c70431a64c1b444f65892fa2da71a9f1b6d57b1673da'

    url "http://www.culater.net/dl/files/SIMBL-#{version}.zip"
    pkg "SIMBL-#{version}/SIMBL-#{version}.pkg"
  end

  appcast 'http://www.culater.net/software/SIMBL/SIMBL.php',
          checkpoint: 'fed90cb3904e03b0cba8d4f4869d9074e7954ce703c46404fc1a075124a4b468'
  name 'SIMBL'
  homepage 'http://www.culater.net/software/SIMBL/SIMBL.php'

  uninstall launchctl: 'net.culater.SIMBL.Agent',
            pkgutil:   'net.culater.simbl.SIMBL.pkg'
end
