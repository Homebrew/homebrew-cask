cask 'netgear-genie' do
  version :latest
  sha256 :no_check

  url "http://http.updates1.netgear.com/netgeargenie/mac/update/NETGEARGenieInstaller.dmg"
  name 'NETGEAR Genie'
  homepage 'https://www.netgear.com/support/download/'

  container nested: "NETGEARGenieInstaller.dmg"

  app 'NETGEAR Genie.app'
end
