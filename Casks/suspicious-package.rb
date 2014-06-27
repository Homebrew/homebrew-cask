class SuspiciousPackage < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg'
  homepage 'http://www.mothersruin.com/software/SuspiciousPackage/'

  qlplugin 'Suspicious Package.qlgenerator'
end
