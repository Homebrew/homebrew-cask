cask 'RDM' do
  version '2.1'
  sha256 'eed11e9f5879cf67d306d314c266226463808f2c72d3a44fc874288c994ee9e7'

  # This is the website to download RDM
  url "http://avi.alkalay.net/software/RDM/RDM-#{version}.pkg"
  name 'RDM'
  homepage 'https://github.com/avibrazil/RDM'
  license :gratis

  pkg "RDM-#{version}.pkg"

  uninstall delete: '/Applications/RDM.app'
end
