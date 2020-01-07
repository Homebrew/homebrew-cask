cask 'intel-power-gadget' do
  version '3.6.2,842795'
  sha256 '217274c97501d57dd17e6fb0c73a5fcdefc2a375cbbdb76d7645b537b74d386f'

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
