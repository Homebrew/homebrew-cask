cask 'cool-retro-term' do
  version '1.0.1'
  sha256 '1cddb173251290388cee2d24fc668585da03d3cb1f30123efd70c0500ba74b5a'

  url "https://github.com/Swordfish90/cool-retro-term/releases/download/#{version}/cool-retro-term.dmg"
  appcast 'https://github.com/Swordfish90/cool-retro-term/releases.atom',
          checkpoint: '1fa432ae6057c8ab1677b1bcd084348381d9a2190b0ec8e7cd10bd94936cd352'
  name 'cool-retro-term'
  homepage 'https://github.com/Swordfish90/cool-retro-term'

  app 'cool-retro-term.app'
end
