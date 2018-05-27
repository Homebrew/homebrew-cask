cask '360safe' do
  version '1.2.4'
  sha256 '1b33ced51458e301a9dd5f00caa99c9de189da92c59b7deb75b461709cf2de95'

  url "https://free.360totalsecurity.com/totalsecurity/mac/360ts_mac_#{version}.dmg"
  name '360 Total Security'
  homepage 'https://www.360totalsecurity.com/features/360-total-security-mac/'

  app '360Safe.app'
end
