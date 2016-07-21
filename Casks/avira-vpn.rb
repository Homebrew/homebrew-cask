cask 'avira-vpn' do
  version :latest
  sha256 :no_check

  # avira-update.com was verified as official when first introduced to the cask
  url 'https://install.avira-update.com/package/vpn/osx/int/vpn.pkg'
  name 'Avira VPN'
  homepage 'http://www.avira.com/en/avira-phantom-vpn'
  license :commercial

  pkg 'vpn.pkg'

  uninstall delete:  '/Applications/Avira Phantom VPN.app'
end
