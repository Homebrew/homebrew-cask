cask :v1 => 'serf' do
  version '0.6.4'
  sha256 '8f1cd35ab55e95657c1dcc657df94fee62cb745ba72927d105559396c4f0a3ef'

  url "https://releases.hashicorp.com/serf/#{version}/serf_#{version}_darwin_amd64.zip"
  name 'Serf'
  homepage 'https://www.serfdom.io/'
  license :mpl

  binary 'serf'
end
