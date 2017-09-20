cask 'moveslink' do
  version '2.1.4.4'
  sha256 '474ec979b4fb9b6c2319a61162e95ca895eb9949b3f2a72a7365561bcf651a8c'

  # d1c229iib3zm7m.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1c229iib3zm7m.cloudfront.net/mac/Moveslink#{version.dots_to_underscores}.dmg"
  name 'Moveslink'
  homepage 'https://www.movescount.com/connect'

  app "Moveslink#{version.major}.app"
end
