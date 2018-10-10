cask 'rest-time' do
  version '1.15'
  sha256 '8ef9cf5ba65beb68e302f9b52dc1c049ca680cf913a749ddfce4d246ea5518c5'

  url 'http://www.publicspace.net/download/RestTime.dmg'
  appcast 'http://www.publicspace.net/app/resttime.xml'
  name 'Rest Time'
  homepage 'http://www.publicspace.net/RestTime/'

  auto_updates true

  app 'Rest Time.app'

  zap trash: [
               '~/Library/Caches/net.publicspace.resttime',
               '~/Library/Preferences/net.publicspace.resttime.plist',
             ]
end
