cask 'intel-power-gadget' do
  version '3.7.0,843900'
  sha256 '22ed3fe050c3b965841ccc5590a3a03bb9498f8620e01ba4dea5557dcd24fe43'

  url "https://software.intel.com/file/#{version.after_comma}/download"
  appcast 'https://software.intel.com/en-us/articles/intel-power-gadget',
          configuration: version.after_comma
  name 'Intel Power Gadget'
  homepage 'https://software.intel.com/en-us/articles/intel-power-gadget'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  pkg 'Install Intel Power Gadget.pkg'

  uninstall pkgutil: 'com.intel.pkg.PowerGadget.*',
            kext:    'EnergyDriver'
end
