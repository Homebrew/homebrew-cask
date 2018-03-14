cask 'mark-text' do
  version '0.6.14'
  sha256 '04b8f78adbc4d7d3f11622516dde627ac7870c28220737ae546a4835b9265fe1'

  # github.com/marktext/marktext was verified as official when first introduced to the cask
  url "https://github.com/marktext/marktext/releases/download/v#{version}/marktext-#{version}.dmg"
  appcast 'https://github.com/marktext/marktext/releases.atom',
          checkpoint: 'f6e600e962ea30715501d0fe7a5a862f06550120e4cf4e891473c1878e35ec2d'
  name 'Mark Text'
  homepage 'https://marktext.github.io/website/'

  app 'Mark Text.app'
end
