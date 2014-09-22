class Geekbench < Cask
  version '3.2.0'
  sha256 'b355ad73a412e89567e5953498299ff69aad57609733903533fd01666aee57f8'

  url "https://d34wv75roto0rl.cloudfront.net/Geekbench-#{version}-Mac.zip"
  appcast 'http://www.primatelabs.com/appcast/geekbench3.xml'
  homepage 'http://www.primatelabs.com/geekbench/'

  app 'Geekbench 3.app'
end
