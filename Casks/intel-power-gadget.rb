cask 'intel-power-gadget' do
  version '3.0.7,553992'
  sha256 '4474360bf027a76b69a5803a681ff9cded1e0a92c9e03c57bfc127d29eea0319'

  url "https://software.intel.com/file/#{version.after_comma}/download?#.dmg"
  name 'Intel Power Gadget'
  homepage 'https://software.intel.com/en-us/articles/intel-power-gadget-20'

  pkg 'Install Intel Power Gadget.pkg'

  uninstall pkgutil: 'com.intel.pkg.PowerGadget.*',
            kext:    'EnergyDriver'
end
