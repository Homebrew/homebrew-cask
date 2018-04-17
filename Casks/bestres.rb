cask 'bestres' do
  version :latest
  sha256 :no_check

  # devmate.com/com.icyberon.BestRes was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.icyberon.BestRes/BestRes.zip'
  name 'BestRes'
  homepage 'https://bestres.wojtek.im/'

  depends_on macos: '>= :yosemite'

  app 'BestRes.app'
end
