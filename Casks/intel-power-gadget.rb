cask 'intel-power-gadget' do
  version '3.0.3'
  sha256 '93f052f5c1306272fceab7af5740d2837656242ab879436a6ce9e573ed9a274e'

  url 'https://software.intel.com/file/501089/download'
  name 'Intel Power Gadget'
  homepage 'https://software.intel.com/en-us/articles/intel-power-gadget-20'

  pkg 'Install Intel Power Gadget.pkg'

  uninstall pkgutil: 'com.intel.pkg.PowerGadget.*'
end
