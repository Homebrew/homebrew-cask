cask 'mark-text' do
  version '0.8.12'
  sha256 '332bd8ced0cc31ab33c0f52d8a748930a47a3312f01571e4e61fe1a0ac6f1d56'

  # github.com/marktext/marktext was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom',
          checkpoint: 'e0064ac52d33edc0d44e46092719d0a627ebe109af0f7bc35bed6d54bc3f7a3a'
  name 'Mark Text'
  homepage 'https://marktext.github.io/website/'

  app 'Mark Text.app'
end
