cask 'sbrowserq' do
  version '3.0'
  sha256 '32d996a6e1044ea639b3e1f92f20df3a938872f95fc7837beb2231bbe9fd7a13'

  url "http://park.geocities.jp/sbrowser_q/SbrowserQ_V#{version}_mac.zip"
  name 'SbrowserQ'
  homepage 'http://park.geocities.jp/sbrowser_q/'
  license :gratis

  app "SbrowserQ_V#{version}_mac/SbrowserQ.app"
  app "SbrowserQ_V#{version}_mac/SbrowserQ_Bundle_Java8.app"
end
