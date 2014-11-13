cask :v1 => 'pngcommentator' do
  version '1.3.2'
  sha256 '066f11b8e9ee406e1395380cbb602e6f6241b0137606d30f97237311f7aaa227'

  url "http://www.echomist.co.uk/software/downloads/PNGCommentator_#{version}.dmg"
  appcast 'http://www.echomist.co.uk/Sparkle/PNGCommentator.xml',
          :sha256 => 'db3af91a76bdb1ed47e62c7ab150e7dbb0917ba3c040c6dba6b891c0ac0bb0f6'
  homepage 'http://www.echomist.co.uk/software/PNGCommentator.html'
  license :unknown

  app 'PNGCommentator.app'
end
