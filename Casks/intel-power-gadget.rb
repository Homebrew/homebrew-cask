cask 'intel-power-gadget' do
  version '3.5.4,770353'
  sha256 '54046d3a48d484f4e8723c4af170c51603085985210c3b9b18e51219ca2344ae'

  url "https://software.intel.com/file/#{version.after_comma}/download"
  name 'Intel Power Gadget'
  homepage 'https://software.intel.com/en-us/articles/intel-power-gadget-20'

  depends_on macos: '>= :high_sierra'

  pkg 'Install Intel Power Gadget.pkg'

  uninstall pkgutil: 'com.intel.pkg.PowerGadget.*',
            kext:    'EnergyDriver'
end
