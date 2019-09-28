cask 'intel-power-gadget' do
  version '3.6.0,833059'
  sha256 'b99c5c55b541e7b6c5d1a390b11ee662352b8dae955df183d7e1113cebd94ab6'

  url "https://software.intel.com/file/#{version.after_comma}/download"
  appcast 'https://software.intel.com/en-us/articles/intel-power-gadget',
          configuration: version.after_comma
  name 'Intel Power Gadget'
  homepage 'https://software.intel.com/en-us/articles/intel-power-gadget'

  depends_on macos: '>= :high_sierra'

  pkg 'Install Intel Power Gadget.pkg'

  uninstall pkgutil: 'com.intel.pkg.PowerGadget.*',
            kext:    'EnergyDriver'
end
