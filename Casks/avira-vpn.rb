cask 'avira-vpn' do
  version :latest
  sha256 :no_check

  # install.avira-update.com is the official download link
  url 'https://install.avira-update.com/package/vpn/osx/int/vpn.pkg'
  name 'Avira VPN'
  homepage 'http://www.avira.com/en/avira-phantom-vpn'
  license :commercial

  pkg 'vpn.pkg'

  uninstall delete:  '/Applications/Avira Phantom VPN.app'
end
