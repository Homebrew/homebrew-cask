cask :v1 => 'alfred' do
  version '2.7_385'
  sha256 'a097fd1c8a49ddb62ad7b45243b34dccd6e663426ea0cef3c0e5f92529a83904'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.zip"
  name 'Alfred'
  homepage 'http://www.alfredapp.com/'
  license :commercial

  app 'Alfred 2.app'
  app 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'

  postflight do
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
end
