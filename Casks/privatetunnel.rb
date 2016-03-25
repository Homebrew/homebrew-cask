cask 'privatetunnel' do
  version '2.5'
  sha256 'a5ffd8a9d13fc20180b102212e3036d7a59210162bba647f207405ed03b14812'

  url "https://swupdate.openvpn.org/privatetunnel/client/privatetunnel-mac-#{version}.dmg"
  name 'Private Tunnel'
  homepage 'https://www.privatetunnel.com'
  license :gratis

  pkg 'PrivateTunnel.mpkg'

  uninstall script: 'Uninstaller.command'
end
