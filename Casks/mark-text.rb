cask 'mark-text' do
  version '0.9.25'
  sha256 'd49e14ef72ae5443b717139c8851cf2cc4d0c557c530c9ed36d389e942013a48'

  # github.com/marktext/marktext was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom',
          checkpoint: '0b4e404117b748cd10ad870a2c970d3d2e02f2a99dd9874705e21da901d0d862'
  name 'Mark Text'
  homepage 'https://marktext.github.io/website/'

  app 'Mark Text.app'
end
