cask 'chronograf' do
  version '1.0.0'
  sha256 '2b4fe4975acf4d0c0de500d81bcbd1f4ac4ee1109ed6c9717bff571262b1d9bb'

  url "https://dl.influxdata.com/chronograf/releases/chronograf-#{version}-darwin_amd64.tar.gz"
  name 'Chronograf'
  homepage 'https://www.influxdata.com/products/'

  binary "chronograf-#{version}/chronograf-#{version}-darwin_amd64", target: 'chronograf'
end
