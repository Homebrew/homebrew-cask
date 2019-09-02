cask 'mark-text' do
  version '0.15.0'
  sha256 '59865dbcd317bb8330321f51e4d4d4c95429633d4cc189fa28085720faa9d09f'

  # github.com/marktext/marktext was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom'
  name 'Mark Text'
  homepage 'https://marktext.github.io/website/'

  app 'Mark Text.app'
end
