cask :v1 => 'consul-web-ui' do
  version '0.5.0'
  sha256 '0081d08be9c0b1172939e92af5a7cf9ba4f90e54fae24a353299503b24bb8be9'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/consul/#{version}_web_ui.zip"
  name 'Consul - Web UI'
  homepage 'http://www.consul.io/'
  license :mpl

  artifact 'dist/index.html'
end
