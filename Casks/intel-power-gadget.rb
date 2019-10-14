cask 'intel-power-gadget' do
  version '3.6.1,833853'
  sha256 'f88af78566e406a06bf96349a7314a811cedfa698b38252ffc36f4f19ab52b65'

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
