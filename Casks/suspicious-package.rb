class SuspiciousPackage < Cask
  url 'http://www.mothersruin.com/software/downloads/SuspiciousPackage.dmg'
  homepage 'http://www.mothersruin.com/software/SuspiciousPackage/'
  version 'latest'
  sha256 :no_check
  qlplugin 'Suspicious Package.qlgenerator'
end
