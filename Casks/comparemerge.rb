cask 'comparemerge' do
  version '2.11z,105'
  sha256 '5c9cfbed48fee3e913713b2b1e14c5dc2719018803f04d1f67bd3fc470b0b886'

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge%20#{version.before_comma}%28#{version.major}%29.zip"
  appcast 'https://sourceforge.net/projects/comparemergenosandbox/rss'
  name 'CompareMerge'
  homepage 'https://sourceforge.net/projects/comparemergenosandbox/'

  app "CompareMerge#{version.before_comma}/CompareMerge#{version.before_comma}.app"
end
