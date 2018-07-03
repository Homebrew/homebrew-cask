cask 'psychopy' do
  version '1.90.3'
  sha256 '7e1dfac94c39bd2a8fa5489e5e856b73add5d23a1fd381ce0c60e2478e0f6b55'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy2_PY3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy2_PY3.app'
end
