cask 'psychopy' do
  version '1.83.03'
  sha256 'bfb5d1d07e7df089d3056e6f4fd9ff6847628d4ed7a24f508f7c79190d1bc753'

  url "https://github.com/psychopy/psychopy/releases/download/1.83.03/StandalonePsychoPy-#{version}-OSX_64bit.dmg"
  name 'PsychoPy'
  homepage 'http://www.psychopy.org/'
  license :oss

  app 'PsychoPy2.app'
end
