cask 'intel-power-gadget' do
  version '3.5.3,655065'
  sha256 'a148715a956f1049a81a420244c919cf6f1678bbece9f79a42167c5485e83ded'

  url "https://software.intel.com/file/#{version.after_comma}/download?#.dmg"
  name 'Intel Power Gadget'
  homepage 'https://software.intel.com/en-us/articles/intel-power-gadget-20'

  pkg 'Install Intel Power Gadget.pkg'

  uninstall pkgutil: 'com.intel.pkg.PowerGadget.*',
            kext:    'EnergyDriver'
end
