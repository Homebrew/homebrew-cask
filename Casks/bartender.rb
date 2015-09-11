cask :v1 => 'bartender' do
  version '1.2.39'
  sha256 '8c9b8cdbefcc458598a41a1a8d77d9456e45b977836546c4fe41b6d086b00f33'

  url "http://macbartender.com/updates/#{version.gsub('.', '-')}/Bartender.zip",
      :referer => 'http://www.macbartender.com'
  name 'Bartender'
  appcast 'http://www.macbartender.com/updates/Appcast.xml',
          :sha256 => 'cb01076d5f91bf81f8b3074c5bc205f74b55e81ee880b756a2898057a2ffc953'
  homepage 'http://www.macbartender.com/'
  license :commercial

  app 'Bartender.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  '/Library/ScriptingAdditions/BartenderHelper.osax',
                  '~/Library/Preferences/com.surteesstudios.Bartender.plist'
                 ]
end
