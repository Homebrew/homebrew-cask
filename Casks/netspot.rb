cask :v1 => 'netspot' do
  version :latest
  sha256 :no_check

  url 'http://www.netspotapp.com/download/NetSpot.dmg'
  appcast 'http://www.netspotapp.com/updates/netspot2-appcast.xml'
  homepage 'http://www.netspotapp.com'
  license :unknown    # todo: improve this machine-generated value

  app 'NetSpot.app'
end
