cask :v1 => 'suspicious-package' do
  version :latest
  sha256 :no_check

  url 'http://www.mothersruin.com/software/downloads/SuspiciousPackage.pkg'
  name 'Suspicious Package'
  homepage 'http://www.mothersruin.com/software/SuspiciousPackage/'
  license :gratis

  pkg 'SuspiciousPackage.pkg'

  uninstall :pkgutil => 'com.mothersruin.pkg.SuspiciousPackagePlugin'
end
