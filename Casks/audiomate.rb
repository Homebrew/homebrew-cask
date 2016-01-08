cask 'audiomate' do
  version '2.2.3,122'
  sha256 '7065294d5ccbc72ba7da3b0c23a3ba52aa9a051e7c94694b96e6e3b422168eb6'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads.9labs.io/audiomate/#{version.before_comma}/#{version.after_comma}/AudioMate-v#{version.before_comma}.dmg"
  appcast 'https://backend.9labs.io/appcast/audiomate',
          :sha256 => 'fb35f65d30d27b7668db67d0311b6d5ed27d07e1b74984699cf4abdc8c8d3685'
  name 'AudioMate'
  homepage 'https://audiomateapp.com/'
  license :mit

  app 'AudioMate.app'

  postflight do
    suppress_move_to_applications
  end
end
