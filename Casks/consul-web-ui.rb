cask 'consul-web-ui' do
  version '0.8.5'
  sha256 '4f7b90d8159480daeff6f3673f56fc75c00e4fd05de9c5c6d22a4af2fbc78368'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_web_ui.zip"
  name 'Consul Web UI'
  homepage 'https://www.consul.io/intro/getting-started/ui.html'

  depends_on formula: 'consul'

  stage_only true

  caveats do
    discontinued
  end
end
