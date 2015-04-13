cask :v1 => 'consul-template' do
  version '0.8.0'
  sha256 'c7140c50d57e991e8ce200303ec33d002e7dff1a2cedb79b0942cb8fe3123590'

  url "https://github.com/hashicorp/consul-template/releases/download/v#{version}/consul-template_#{version}_darwin_amd64.tar.gz"
  appcast 'https://github.com/hashicorp/consul-template/releases.atom'
  name 'Consul Template'
  homepage 'https://github.com/hashicorp/consul-template'
  license :mpl

  binary "consul-template_#{version}_darwin_amd64/consul-template"
end
