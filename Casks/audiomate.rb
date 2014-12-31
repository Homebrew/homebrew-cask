cask :v1 => 'audiomate' do
  version '2.1.3'
  sha256 'fffa5e90da27800bd619e10d60383d2999bac7411cefc8d05b29d53c19a4a510'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/downloads.troikalabs.com/audiomate/#{version}/72/AudioMate-v#{version}.dmg"
  homepage 'http://audiomateapp.com/'
  license :mit

  app 'AudioMate.app'
end
