cask 'avibrazil-rdm' do
  version '2.1'
  sha256 'eed11e9f5879cf67d306d314c266226463808f2c72d3a44fc874288c994ee9e7'

  # avi.alkalay.net/software/RDM was verified as official when first introduced to the cask
  url "https://avi.alkalay.net/software/RDM/RDM-#{version}.pkg"
  name 'RDM'
  homepage 'https://github.com/avibrazil/RDM'

  pkg "RDM-#{version}.pkg"

  uninstall pkgutil: 'net.alkalay.RDM'
end
