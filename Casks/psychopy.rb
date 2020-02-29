cask 'psychopy' do
  version '2020.1.1'
  sha256 'd66613d57460326f77895952452712e10d11bc66b63c5862ac55de9ff484127c'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
