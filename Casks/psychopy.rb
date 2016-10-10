cask 'psychopy' do
  version '1.83.04'
  sha256 '01a4fdf1d087d408b195d7a10cc406030623bbfce72bd85e6b9647ace9084960'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-OSX_64bit.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom',
          checkpoint: 'cae3f1e417eeadfe1203dd34a150bca64bc78fea6ae9649491bbc113ed5800da'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy2.app'
end
