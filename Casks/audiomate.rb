cask :v1 => 'audiomate' do
  version '2.2.3_122'
  sha256 '7065294d5ccbc72ba7da3b0c23a3ba52aa9a051e7c94694b96e6e3b422168eb6'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads.9labs.io/audiomate/#{version.sub(%r{_.*},'')}/#{version.sub(%r{.*_},'')}/AudioMate-v#{version.sub(%r{_.*},'')}.dmg"
  appcast 'http://backend.9labs.io/appcast/audiomate',
          :sha256 => '9e431475ead844f83a2d9dbd7d5e975404a0a6fa9a5c80a769d08bf740654516'
  name 'AudioMate'
  homepage 'http://audiomateapp.com/'
  license :mit

  app 'AudioMate.app'

  postflight do
    suppress_move_to_applications
  end
end
