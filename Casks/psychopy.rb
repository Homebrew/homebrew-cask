cask 'psychopy' do
  version '2020.1.0'
  sha256 '2fb811b2b2394bf5a8620189630f9568f6fb839bd82d07b9215cd7b611070832'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
