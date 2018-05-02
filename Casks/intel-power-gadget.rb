cask 'intel-power-gadget' do
  version '3.5.2,641033'
  sha256 '5fd602aa9321329c6b5c851c5158849905a18ef45d7a4ee9d452fdadfb708e30'

  url "https://software.intel.com/file/#{version.after_comma}/download?#.dmg"
  name 'Intel Power Gadget'
  homepage 'https://software.intel.com/en-us/articles/intel-power-gadget-20'

  pkg 'Install Intel Power Gadget.pkg'

  uninstall pkgutil: 'com.intel.pkg.PowerGadget.*',
            kext:    'EnergyDriver'
end
