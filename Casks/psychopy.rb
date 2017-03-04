cask 'psychopy' do
  version '1.84.2'
  sha256 '61d56a3c894fd75a8e23b4ca59af0bb7c172ee9b3713b1dd27f0169ccf186adb'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-OSX_64bit.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom',
          checkpoint: 'f901e06f8e03c312d524c51a479c84e0939a1c6b75d62a7509af39ebab194a8a'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy2.app'
end
