cask 'pngcommentator' do
  version '1.3.2'
  sha256 '066f11b8e9ee406e1395380cbb602e6f6241b0137606d30f97237311f7aaa227'

  url "http://www.echomist.co.uk/software/downloads/PNGCommentator_#{version}.dmg"
  appcast 'http://www.echomist.co.uk/Sparkle/PNGCommentator.xml',
          checkpoint: '191e22bf5f7aa404eb58ab911c4f77fc43902bc8f3812e63b846059049401e43'
  name 'PNGCommentator'
  homepage 'http://www.echomist.co.uk/software/PNGCommentator.html'

  app 'PNGCommentator.app'
end
