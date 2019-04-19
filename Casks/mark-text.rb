cask 'mark-text' do
  version '0.14.0'
  sha256 '97c2248bd7bb4cab393a868567ad902a5796887704e53b48afbfa60462d2c9c9'

  # github.com/marktext/marktext was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom'
  name 'Mark Text'
  homepage 'https://marktext.github.io/website/'

  app 'Mark Text.app'
end
