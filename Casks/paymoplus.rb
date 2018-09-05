cask 'paymoplus' do
  version :latest
  sha256 :no_check

  url 'https://app.paymoapp.com/desktop-apps/paymoplus/PaymoPlus_latest.dmg'
  name 'PaymoPlus'
  homepage 'https://www.paymoapp.com/'

  app 'PaymoPlus.app'
end
