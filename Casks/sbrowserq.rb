cask :v1 => 'sbrowserq' do
  version '2.3'
  sha256 '101696f7265f86dfe784267f637975dc8dd3e035fe95cf5e454d04036c8328bc'

  url "http://park.geocities.jp/sbrowser_q/SbrowserQ_V#{version}_mac.zip"
  name 'SbrowserQ'
  homepage 'http://park.geocities.jp/sbrowser_q/'
  license :gratis

  app "SbrowserQ_V#{version}_mac/SbrowserQ.app"
  app "SbrowserQ_V#{version}_mac/SbrowserQ_Bundle_Java8.app"
end
