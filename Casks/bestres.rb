cask :v1 => 'bestres' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'http://dl.devmate.com/com.icyberon.BestRes/BestRes.zip'
  name 'BestRes'
  homepage 'http://icyberon.com/bestres/'
  license :gratis

  depends_on :macos => '>= :yosemite'

  app 'BestRes.app'
end
