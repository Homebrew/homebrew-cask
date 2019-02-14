cask 'psychopy' do
  version '3.0.4'
  sha256 '67b4548186d90f0a34293bca1375ef06017ccdf85a6b1963af10e261b9829ad1'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
