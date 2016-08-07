cask 'nordvpn' do
  version :latest
  sha256 :no_check

  url 'https://nordvpn.com/api/osxapp/latest'
  name 'NordVPN'
  homepage 'http://www.nordvpn.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'NordVPN.app'
end
