cask 'pngcommentator' do
  version '1.3.2'
  sha256 '066f11b8e9ee406e1395380cbb602e6f6241b0137606d30f97237311f7aaa227'

  url "http://www.echomist.co.uk/software/downloads/PNGCommentator_#{version}.dmg"
  appcast 'http://www.echomist.co.uk/Sparkle/PNGCommentator.xml',
          checkpoint: 'b01346177d34c9c7e010806ea838ed72603a1211938da04c90c951e46d764350'
  name 'PNGCommentator'
  homepage 'http://www.echomist.co.uk/software/PNGCommentator.html'

  app 'PNGCommentator.app'
end
