cask 'suspicious-package' do
  version :latest
  sha256 :no_check

  url 'http://www.mothersruin.com/software/downloads/SuspiciousPackage.xip'
  name 'Suspicious Package'
  homepage 'http://www.mothersruin.com/software/SuspiciousPackage/'
  license :gratis

  depends_on formula: 'unar'
  container type: :generic_unar

  qlplugin 'Suspicious Package.qlgenerator'
end
