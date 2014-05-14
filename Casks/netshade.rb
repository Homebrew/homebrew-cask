class Netshade < Cask
  url 'http://raynersoftware.com/downloads/NetShade.app.zip'
  appcast 'https://secure.raynersw.com/appcast.php'
  homepage 'http://raynersoftware.com/netshade/'
  version 'latest'
  sha256 :no_check
  link 'NetShade.app'
end
