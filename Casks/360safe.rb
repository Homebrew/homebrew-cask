cask '360safe' do
  version '1.1.2'
  sha256 '6fdef1e93f9930f48ecf7144ed2412663138a1cee492aaa371550907999db8d9'

  url "https://free.360totalsecurity.com/totalsecurity/mac/360ts_mac_#{version}.dmg"
  appcast 'https://www.360totalsecurity.com/en/version/360-total-security-mac/',
          checkpoint: 'cbbe129c78691310d2ffa8274aa5709ce28cddfaa6f4f74ad0877716ec917b8e'
  name '360 Total Security'
  homepage 'https://www.360totalsecurity.com/features/360-total-security-mac/'

  app '360Safe.app'
end
