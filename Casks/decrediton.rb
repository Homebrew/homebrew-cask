cask 'decrediton' do
  version '1.1.3'
  sha256 '1c1a8d6ae9d5f0e80401e2a442ab593149375fe9fb2834c0fdc4f17a7f5d8ce6'

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-v#{version}.dmg"
  appcast 'https://github.com/decred/decred-binaries/releases.atom',
          checkpoint: 'e4373be60826a72d3087966c6764f415104859323cdb07a1026b919411178885'
  name 'Decrediton'
  homepage 'https://github.com/decred/decrediton'

  app 'decrediton.app'
end
