cask :v1 => 'alfred' do
  version '2.5.1_308'
  sha256 '06e55eed65c3e09bffd385a11a695ebd7df79a5303690e9cb197a0b72782e2dc'

  url "https://cachefly.alfredapp.com/Alfred_#{version}.zip"
  homepage 'http://www.alfredapp.com/'
  license :commercial

  app 'Alfred 2.app'
  app 'Alfred 2.app/Contents/Preferences/Alfred Preferences.app'

  postflight do
    suppress_move_to_applications :key => 'suppressMoveToApplications'
  end
end
