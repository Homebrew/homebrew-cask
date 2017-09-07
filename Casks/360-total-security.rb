cask '360-total-security' do
  version '1.1.2'
  sha256 '6fdef1e93f9930f48ecf7144ed2412663138a1cee492aaa371550907999db8d9'

  url "https://free.360totalsecurity.com/totalsecurity/mac/360ts_mac_#{version}.dmg"
  appcast 'https://www.360totalsecurity.com/en/version/360-total-security-mac/',
          checkpoint: 'a265dc1b1421f71e170af65ba5e703d608f46a6ef703bfd8b37b4a65212067fd'
  name '360 Total Security'
  homepage 'https://www.360totalsecurity.com/features/360-total-security-mac/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app '360Safe.app', target: '360 Total Security.app'
end
