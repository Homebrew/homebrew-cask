cask :v1 => 'alfred' do
  version '2.6_374'
  sha256 'cc9f8791454056bcd0cd9ac94ae3604aa2bda4014a453c3e0cf5818a18a85eee'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.zip"
  name 'Alfred'
  homepage 'http://www.alfredapp.com/'
  license :freemium

  app 'Alfred 2.app'
  app 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'

  postflight do
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
end
