cask :v1 => 'suspicious-package' do
  version :latest
  sha256 :no_check

  url 'http://www.mothersruin.com/software/downloads/SuspiciousPackage.pkg'
  homepage 'http://www.mothersruin.com/software/SuspiciousPackage/'
  license :unknown

  pkg 'SuspiciousPackage.pkg'
  uninstall :pkgutil => 'com.mothersruin.pkg.SuspiciousPackagePlugin'
end
