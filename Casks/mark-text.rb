cask 'mark-text' do
  version '0.11.42'
  sha256 'ca91ee5a40f4898055f6f2bb26c387f26c3541fbb4cf641095a62332cdaa13e3'

  # github.com/marktext/marktext was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom'
  name 'Mark Text'
  homepage 'https://marktext.github.io/website/'

  app 'Mark Text.app'
end
