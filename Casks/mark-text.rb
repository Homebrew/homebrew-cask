cask 'mark-text' do
  version '0.12.25'
  sha256 'bf9ca0ecdd8bcf136a3e7226efbee00c958360d6311dc50644667daaf4f58eb0'

  # github.com/marktext/marktext was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom'
  name 'Mark Text'
  homepage 'https://marktext.github.io/website/'

  app 'Mark Text.app'
end
