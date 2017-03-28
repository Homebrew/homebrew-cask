cask 'sbrowserq' do
  version '3.3'
  sha256 '45ea3b8887f84ae1e4cb3206ad2f7d466b34bdc292a16dc26df298a8c8066b86'

  url "http://park.geocities.jp/sbrowser_q/SbrowserQ_V#{version}_mac.zip"
  name 'SbrowserQ'
  homepage 'http://park.geocities.jp/sbrowser_q/'

  app "SbrowserQ_V#{version}_mac/SbrowserQ.app"
  app "SbrowserQ_V#{version}_mac/SbrowserQ_Bundle_Java8.app"
end
