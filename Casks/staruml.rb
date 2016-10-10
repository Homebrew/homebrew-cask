cask 'staruml' do
  version '2.7.0'
  sha256 'a31f77ad71c0d3fed0b1729df4b23fcc76b47eb51695861546c053171c874a9f'

  url "http://staruml.io/download/release/v#{version}/StarUML-v#{version}.dmg"
  name 'StarUML'
  homepage 'http://staruml.io/'

  app 'StarUML.app'
end
