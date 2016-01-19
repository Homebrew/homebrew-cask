cask 'audiomate' do
  version '2.2.3,122'
  sha256 '7065294d5ccbc72ba7da3b0c23a3ba52aa9a051e7c94694b96e6e3b422168eb6'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads.9labs.io/audiomate/#{version.before_comma}/#{version.after_comma}/AudioMate-v#{version.before_comma}.dmg"
  appcast 'https://backend.9labs.io/appcast/audiomate',
          checkpoint: '1328554408450507f383168376c4e94bc83fbabf3aa05266cb32a704cbb130bb'
  name 'AudioMate'
  homepage 'https://audiomateapp.com/'
  license :mit

  app 'AudioMate.app'

  postflight do
    suppress_move_to_applications
  end
end
