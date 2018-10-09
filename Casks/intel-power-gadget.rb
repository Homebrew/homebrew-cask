cask 'intel-power-gadget' do
  version '3.5.5,778485'
  sha256 'ff2f82e095cdea62393e78e69b0616b1d34a95c4b16960891d91943c7c3b62ec'

  url "https://software.intel.com/file/#{version.after_comma}/download"
  name 'Intel Power Gadget'
  homepage 'https://software.intel.com/en-us/articles/intel-power-gadget-20'

  depends_on macos: '>= :high_sierra'

  pkg 'Install Intel Power Gadget.pkg'

  uninstall pkgutil: 'com.intel.pkg.PowerGadget.*',
            kext:    'EnergyDriver'
end
