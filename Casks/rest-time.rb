cask 'rest-time' do
  version '1.10'
  sha256 '8fac7e3f8caec3e68744c7d4b26cd36c7d4f0a4712711ba878d92ae0a2caba4f'

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
