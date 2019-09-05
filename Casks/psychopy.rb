cask 'psychopy' do
  version '3.2.1'
  sha256 'a7a844d0d4cc34ac7b3b844aa0fda5758d993bca1384cab4e0a7fb6c47234627'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
