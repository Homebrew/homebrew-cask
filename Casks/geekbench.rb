cask :v1 => 'geekbench' do
  version '3.3.0'
  sha256 '5e511bddd2dcee9e85c25fd21063e9682c06c3d44995b7d83d601d6360ee77c0'

  url "https://d34wv75roto0rl.cloudfront.net/Geekbench-#{version}-Mac.zip"
  appcast 'http://www.primatelabs.com/appcast/geekbench3.xml',
          :sha256 => 'e16473af8653e0c163f02ad054e9e6b7b3c5e99c4768da123d8e21c8f8ffeeaf'
  homepage 'http://www.primatelabs.com/geekbench/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Geekbench 3.app'
end
