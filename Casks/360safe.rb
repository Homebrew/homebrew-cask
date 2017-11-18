cask '360safe' do
  version '1.2.4'
  sha256 '1b33ced51458e301a9dd5f00caa99c9de189da92c59b7deb75b461709cf2de95'

  url "https://free.360totalsecurity.com/totalsecurity/mac/360ts_mac_#{version}.dmg"
  appcast 'https://www.360totalsecurity.com/en/version/360-total-security-mac/',
          checkpoint: 'bf19ffd21e18c79522000a32425ef6ee19f6f556902814fa407c8a514b514171'
  name '360 Total Security'
  homepage 'https://www.360totalsecurity.com/features/360-total-security-mac/'

  app '360Safe.app'
end
