cask :v1 => 'bartender' do
  version '1.2.38'
  sha256 'c4e1a59bf21d9f2d8ab714e0b4ff8504724954c1db06f23d96de3bf0a2084d1b'

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
