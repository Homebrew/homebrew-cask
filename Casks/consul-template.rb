cask 'consul-template' do
  version '0.12.2'
  sha256 'a9ab8e16cb02729153ec72a53f9f9f73efa0259521200467482fb34bd3e893b1'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/consul-template/#{version}/consul-template_#{version}_darwin_amd64.zip"
  name 'Consul Template'
  homepage 'https://github.com/hashicorp/consul-template'
  license :mpl

  binary 'consul-template'
end
