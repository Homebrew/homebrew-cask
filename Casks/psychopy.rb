cask 'psychopy' do
  version '3.0.7'
  sha256 'e1adf0cfb86f5183dc49f828780b8a1efa140408438eed7f27cdda9301bf0f43'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
