cask :v1 => 'consul-template' do
  version '0.5.1'
  sha256 '32aeb5e50bf00fc46c3ae195a7d43ae539ce13115893b18bb9f2d63e373bed7e'

  url "https://github.com/hashicorp/consul-template/releases/download/v#{version}/consul-template_#{version}_darwin_amd64.tar.gz"
  homepage 'https://github.com/hashicorp/consul-template'
  license :mpl

  binary "consul-template_#{version}_darwin_amd64/consul-template"
end
