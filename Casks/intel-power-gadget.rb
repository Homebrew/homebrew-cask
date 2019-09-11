cask 'intel-power-gadget' do
  version '3.5.5,828382'
  sha256 'efd306800c28abda0d5543fbc5bf78eb142a43a96feb56fcf211e3bbc83a78d3'

  url "https://software.intel.com/file/#{version.after_comma}/download"
  appcast 'https://software.intel.com/en-us/articles/intel-power-gadget'
  name 'Intel Power Gadget'
  homepage 'https://software.intel.com/en-us/articles/intel-power-gadget'

  depends_on macos: '>= :high_sierra'

  pkg 'Install Intel Power Gadget.pkg'

  uninstall pkgutil: 'com.intel.pkg.PowerGadget.*',
            kext:    'EnergyDriver'
end
