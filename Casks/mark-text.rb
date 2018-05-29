cask 'mark-text' do
  version '0.11.42'
  sha256 'ca91ee5a40f4898055f6f2bb26c387f26c3541fbb4cf641095a62332cdaa13e3'

  # github.com/marktext/marktext was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom',
          checkpoint: 'f7c7bea54c9be8ede7870a0c25602128a0aa1e9740781a50e4690eac7b43cdb6'
  name 'Mark Text'
  homepage 'https://marktext.github.io/website/'

  app 'Mark Text.app'
end
