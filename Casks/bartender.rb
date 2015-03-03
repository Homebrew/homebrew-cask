cask :v1 => 'bartender' do
  version '1.2.32'
  sha256 'b663d780b20e6b2565d30507973e56bed3f3831df97118a16935b5d11fc2b9ac'

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

  zap :delete => '~/Library/Preferences/com.surteesstudios.Bartender.plist'
end
