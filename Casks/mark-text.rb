cask 'mark-text' do
  version '0.16.1'
  sha256 '676fbcb7230e736f6b41b3ee21df864131565dee45b212b658990e7760218962'

  # github.com/marktext/marktext/ was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom'
  name 'Mark Text'
  homepage 'https://marktext.app/'

  app 'Mark Text.app'
end
