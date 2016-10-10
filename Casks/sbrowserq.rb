cask 'sbrowserq' do
  version '3.2'
  sha256 '5b3b45acc9a5c9cc15c129fc8ca3b298a1017426941124ebf5d84180ba78a753'

  url "http://park.geocities.jp/sbrowser_q/SbrowserQ_V#{version}_mac.zip"
  name 'SbrowserQ'
  homepage 'http://park.geocities.jp/sbrowser_q/'

  app "SbrowserQ_V#{version}_mac/SbrowserQ.app"
  app "SbrowserQ_V#{version}_mac/SbrowserQ_Bundle_Java8.app"
end
