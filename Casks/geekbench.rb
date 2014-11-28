cask :v1 => 'geekbench' do
  version '3.2.2'
  sha256 'c4891501fe720981e1baca7311241bbd036b82b8d540bc5ad1016465ee40ebe1'

  url "https://d34wv75roto0rl.cloudfront.net/Geekbench-#{version}-Mac.zip"
  appcast 'http://www.primatelabs.com/appcast/geekbench3.xml',
          :sha256 => 'e16473af8653e0c163f02ad054e9e6b7b3c5e99c4768da123d8e21c8f8ffeeaf'
  homepage 'http://www.primatelabs.com/geekbench/'
  license :unknown

  app 'Geekbench 3.app'
end
