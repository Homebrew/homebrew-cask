cask 'psychopy' do
  version '1.90.1'
  sha256 'cd509a3e6f4e5db457756675f7e05b7d049a15c97c8cf796e660355d4e0b00b1'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy2-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom',
          checkpoint: '1b70e49e122315570d13722c08fb22ad5daebbc3ce9076c1afa6b035dc1447e3'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy2.app'
end
