# encoding: UTF-8
cask :v1 => 'intel-power-gadget' do
  version '3.0.1'
  sha256 '538a792721604e2155b3a48caa4084db751a91b170e5fa62bf0331d3147f2239'

  url "https://software.intel.com/sites/default/files/managed/59/39/IntelPowerGadgetMac#{version}.zip"
  homepage 'https://software.intel.com/en-us/articles/intel-power-gadget-20'
  license :unknown    # todo: improve this machine-generated value

  # this bogus-looking character accurately reflects an upstream error
  container :nested => 'IntelÆ Power Gadget.dmg'
  pkg 'Install Intel Power Gadget.pkg'

  uninstall :pkgutil => 'com.intel.pkg.PowerGadget.*'
end
