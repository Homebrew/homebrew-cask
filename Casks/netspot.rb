cask :v1 => 'netspot' do
  version :latest
  sha256 :no_check

  url 'http://www.netspotapp.com/download/NetSpot.dmg'
  appcast 'http://www.netspotapp.com/updates/netspot2-appcast.xml'
  name 'NetSpot'
  homepage 'http://www.netspotapp.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'NetSpot.app'
end
