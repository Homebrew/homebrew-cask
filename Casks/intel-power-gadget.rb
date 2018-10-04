cask 'intel-power-gadget' do
  version '3.5.4,770353'
  sha256 '761f7dd4de7cd7150e6abfedba08f4b1da3a04dc571992dd46b3aca6f699f734'

  url "https://software.intel.com/file/#{version.after_comma}/download"
  name 'Intel Power Gadget'
  homepage 'https://software.intel.com/en-us/articles/intel-power-gadget-20'

  depends_on macos: '>= :high_sierra'

  pkg 'Install Intel Power Gadget.pkg'

  uninstall pkgutil: 'com.intel.pkg.PowerGadget.*',
            kext:    'EnergyDriver'
end
