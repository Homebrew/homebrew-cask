cask 'nordvpn' do
  version :latest
  sha256 :no_check

  url 'https://nordvpn.com/api/osxapp/latest'
  name 'NordVPN'
  homepage 'https://nordvpn.com/'

  app 'NordVPN.app'
end
