cask 'psychopy' do
  version '1.83.04'
  sha256 '01a4fdf1d087d408b195d7a10cc406030623bbfce72bd85e6b9647ace9084960'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-OSX_64bit.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom',
          checkpoint: '4ac792f495a147dd3403885a57c06b9bc939906113a22df48cd24517d3c2877f'
  name 'PsychoPy'
  homepage 'http://www.psychopy.org/'
  license :oss

  app 'PsychoPy2.app'
end
