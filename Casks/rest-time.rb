cask 'rest-time' do
  version '1.14'
  sha256 '66c1de6fc8bd121687cd67627600111f2ef20a00d75db7e38306d2c84092fc67'

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
