cask :v1 => 'consul-template' do
  version '0.11.1'
  sha256 '6915e16969533ef27964199ff4194155cfa6deb43d1a863287d02c0c1b3067ff'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/consul-template/#{version}/consul-template_#{version}_darwin_amd64.zip"
  name 'Consul Template'
  homepage 'https://github.com/hashicorp/consul-template'
  license :mpl

  binary "consul-template_#{version}_darwin_amd64/consul-template"
end
