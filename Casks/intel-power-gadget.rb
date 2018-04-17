cask 'intel-power-gadget' do
  version '3.5.1,613985'
  sha256 '0cc508919bf7a55686c070e7f3d41798d4f5b0fdb9a33e8d692fe8b391b45dfd'

  url "https://software.intel.com/file/#{version.after_comma}/download?#.dmg"
  name 'Intel Power Gadget'
  homepage 'https://software.intel.com/en-us/articles/intel-power-gadget-20'

  pkg 'Install Intel Power Gadget.pkg'

  uninstall pkgutil: 'com.intel.pkg.PowerGadget.*',
            kext:    'EnergyDriver'
end
