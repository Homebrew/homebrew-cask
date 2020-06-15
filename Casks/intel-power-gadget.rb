cask 'intel-power-gadget' do
  version '3.7.0'
  sha256 'b99c5c55b541e7b6c5d1a390b11ee662352b8dae955df183d7e1113cebd94ab6'

  url 'https://software.intel.com/content/dam/develop/external/us/en/documents/Intel%20Power%20Gadget.dmg'
  appcast 'https://software.intel.com/content/www/us/en/develop/articles/intel-power-gadget.html',
          must_contain: version.major
  name 'Intel Power Gadget'
  homepage 'https://software.intel.com/content/www/us/en/develop/articles/intel-power-gadget.html'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  pkg 'Install Intel Power Gadget.pkg'

  uninstall pkgutil: 'com.intel.pkg.PowerGadget.*',
            kext:    'com.intel.driver.EnergyDriver'

  zap trash: [
               '~/Library/Caches/com.intel.PowerGadget',
               '~/Library/Preferences/com.intel.PowerGadget.plist',
             ]
end
