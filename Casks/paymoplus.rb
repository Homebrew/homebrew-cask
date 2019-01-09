cask 'paymoplus' do
  version '2.0.5'
  sha256 '39dcf35626999c7434ce532a0a871919ddfef38e3fa57278a062fe11a51e7c17'

  url "https://cfs4.paymoapp.com/desktop-apps/paymoplus/PaymoPlus_mac_#{version}.dmg"
  appcast 'https://cfs4.paymoapp.com/desktop-apps/paymoplus/sparkle-mac.xml'
  name 'PaymoPlus'
  homepage 'https://www.paymoapp.com/'

  app 'PaymoPlus.app'
end
