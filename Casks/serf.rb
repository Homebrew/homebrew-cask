cask :v1 => 'serf' do
  version '0.6.4'
  sha256 '8f1cd35ab55e95657c1dcc657df94fee62cb745ba72927d105559396c4f0a3ef'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/serf/#{version}_darwin_amd64.zip"
  name 'Serf'
  homepage 'http://www.serfdom.io/'
  license :mpl

  binary 'serf'
end
