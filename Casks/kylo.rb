cask 'kylo' do
  version '1.0.1.76141'
  sha256 '5c5f1c3aedba9aa2807cffbc3aec448f0f51e16e1039c0314cf6394ddbe391b1'

  # github.com/teamkylo/kylo-browser was verified as official when first introduced to the cask
  url "https://github.com/teamkylo/kylo-browser/releases/download/v#{version}/kylo-setup-#{version.dots_to_underscores}.dmg"
  appcast 'https://github.com/teamkylo/kylo-browser/releases.atom'
  name 'Kylo'
  homepage 'http://kylo.tv/'

  app 'Kylo.app'
end
