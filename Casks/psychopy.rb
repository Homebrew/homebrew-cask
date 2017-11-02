cask 'psychopy' do
  version '1.85.4'
  sha256 '218989341215f0c4cfdab12663fbcb828774ded22aa6c51c9650983f9190f7e7'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}b-OSX_64bit.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom',
          checkpoint: '037f4b3fbe0cbcd18978ec7ff530975838345c55ce6aadc80fffbfb3b3389bad'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy2.app'
end
