cask 'avibrazil-rdm' do
  version '2.2'
  sha256 '4baba78e89fb36ae022d5a234bb968402503ed277af59ae72e8270e9b6bef895'

  # avi.alkalay.net/software/RDM was verified as official when first introduced to the cask
  url "https://avi.alkalay.net/software/RDM/RDM-#{version}.pkg"
  name 'RDM'
  homepage 'https://github.com/avibrazil/RDM'

  pkg "RDM-#{version}.pkg"

  uninstall pkgutil: 'net.alkalay.RDM'
end
