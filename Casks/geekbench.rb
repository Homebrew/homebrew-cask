class Geekbench < Cask
  version '3.2.2'
  sha256 'c4891501fe720981e1baca7311241bbd036b82b8d540bc5ad1016465ee40ebe1'

  url "https://d34wv75roto0rl.cloudfront.net/Geekbench-#{version}-Mac.zip"
  appcast 'http://www.primatelabs.com/appcast/geekbench3.xml'
  homepage 'http://www.primatelabs.com/geekbench/'
  license :unknown

  app 'Geekbench 3.app'
end
