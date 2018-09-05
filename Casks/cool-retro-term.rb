cask 'cool-retro-term' do
  version '1.0.1'
  sha256 '1cddb173251290388cee2d24fc668585da03d3cb1f30123efd70c0500ba74b5a'

  url "https://github.com/Swordfish90/cool-retro-term/releases/download/#{version}/cool-retro-term.dmg"
  appcast 'https://github.com/Swordfish90/cool-retro-term/releases.atom'
  name 'cool-retro-term'
  homepage 'https://github.com/Swordfish90/cool-retro-term'

  app 'cool-retro-term.app'
end
