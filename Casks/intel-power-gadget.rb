cask 'intel-power-gadget' do
  version '3.7.0'
  sha256 '6930a0cb8772ae11c654a2f80e6adbfb59a4c730ceeb1788ec7c2e4527ec5d19'

  url 'https://software.intel.com/content/dam/develop/external/us/en/documents/Intel%20Power%20Gadget.dmg'
  appcast 'https://software.intel.com/content/www/us/en/develop/articles/intel-power-gadget.html',
          configuration: version.major
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
