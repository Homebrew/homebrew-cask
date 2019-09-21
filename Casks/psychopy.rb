cask 'psychopy' do
  version '3.2.3'
  sha256 '01a251bfc39a9a4fcc0dfcebbd784c9634f40f7041b57f213a3f7ad5bd56b409'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
