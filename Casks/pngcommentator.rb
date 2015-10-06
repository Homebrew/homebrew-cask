cask :v1 => 'pngcommentator' do
  version '1.3.2'
  sha256 '066f11b8e9ee406e1395380cbb602e6f6241b0137606d30f97237311f7aaa227'

  url "http://www.echomist.co.uk/software/downloads/PNGCommentator_#{version}.dmg"
  appcast 'http://www.echomist.co.uk/Sparkle/PNGCommentator.xml',
          :sha256 => 'b55959ad3e51f79e37e9e72e1037c71ff210544e201ff31231b99aea62ad1686'
  name 'PNGCommentator'
  homepage 'http://www.echomist.co.uk/software/PNGCommentator.html'
  license :gratis

  app 'PNGCommentator.app'
end
