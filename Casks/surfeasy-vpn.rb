cask 'surfeasy-vpn' do
  version :latest
  sha256 :no_check

  url 'https://updates.surfeasy.com/downloads/se0201/SurfEasyVPN-Installer.dmg'
  name 'SurfEasy VPN'
  homepage 'https://www.surfeasy.com/'

  app 'SurfEasy VPN.app'
end
