cask 'comparemerge' do
  version '2.11z,105'
  sha256 '1354834bc0bf02e947289097bd5fe07e8f7f62548890568454500cb6c72bb478'

  url "https://downloads.sourceforge.net/comparemergenosandbox/CompareMerge%20#{version.before_comma}.zip"
  appcast 'https://sourceforge.net/projects/comparemergenosandbox/rss'
  name 'CompareMerge'
  homepage 'https://sourceforge.net/projects/comparemergenosandbox/'

  app "CompareMerge #{version.before_comma}/CompareMerge #{version.before_comma}.app"
end
