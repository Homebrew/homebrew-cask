cask '360safe' do
  version '1.2.5'
  sha256 '060b8c532710513eae7a8c37e8bb59008bb16d7a943798bd8519027e0e18a0fc'

  url "https://free.360totalsecurity.com/totalsecurity/mac/360ts_mac_#{version}.dmg"
  appcast 'https://www.360totalsecurity.com/en/version/360-total-security-mac/',
          checkpoint: 'ae57b711c1881529e48baf78540360db035fbf89931c164d6301fe59b300a17c'
  name '360 Total Security'
  homepage 'https://www.360totalsecurity.com/features/360-total-security-mac/'

  app '360Safe.app'
end
